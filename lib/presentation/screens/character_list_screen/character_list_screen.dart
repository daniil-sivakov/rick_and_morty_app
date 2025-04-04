import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_state.dart';
import 'package:rick_and_morty_app/presentation/messages/data_processing_message.dart';
import 'package:rick_and_morty_app/presentation/messages/message_mapper.dart';
import 'package:rick_and_morty_app/presentation/navigation/app_router.gr.dart';
import 'package:rick_and_morty_app/presentation/screens/character_list_screen/widgets/character_list_filter_bar.dart';
import 'package:rick_and_morty_app/presentation/screens/character_list_screen/widgets/characters_view.dart';
import 'package:rick_and_morty_app/presentation/utilities/show_message_extension.dart';
import 'package:rxdart/rxdart.dart';

@RoutePage()
class CharacterListScreen extends StatelessWidget {
  const CharacterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CharacterPreviewBloc, CharacterPreviewState>(
      listener: (_, state) {
        if (state case NotificationCharacterPreviewState(
          :DataProcessingMessage message,
        )) {
          context.showMessage(MessageMapper().localize(message));
        }
        if (state case ErrorCharacterPreviewState(
          :CharacterPreviewEvent sourceEvent,
          error: NetworkConnectionProblemsException _,
        )) {
          context.router.navigate(
            NoConnectionRoute(
              tryReload: () => _tryReload(context, sourceEvent),
            ),
          );
        }
      },
      child: const Column(
        children: [
          Padding(padding: EdgeInsets.all(8), child: CharacterListFilterBar()),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CharactersView(),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _tryReload(BuildContext context, CharacterPreviewEvent event) {
    final bloc = context.read<CharacterPreviewBloc>();
    bloc.add(event);

    return bloc.stream
        .where((state) => state.sourceEvent == event)
        .map(
          (state) => switch (state) {
            IdleCharacterPreviewState() => true,
            ErrorCharacterPreviewState(
              error: NetworkConnectionProblemsException _,
            ) =>
              false,
            _ => null,
          },
        )
        .whereNotNull()
        .first;
  }
}
