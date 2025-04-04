import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';
import 'package:rick_and_morty_app/domain/use_cases/load_character_details_use_case.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_state.dart';
import 'package:rick_and_morty_app/presentation/messages/data_processing_message.dart';
import 'package:rick_and_morty_app/presentation/messages/message_mapper.dart';
import 'package:rick_and_morty_app/presentation/navigation/app_router.gr.dart';
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/widgets/character_details_title.dart';
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/widgets/character_details_view.dart';
import 'package:rick_and_morty_app/presentation/utilities/show_message_extension.dart';
import 'package:rxdart/transformers.dart';

@RoutePage()
class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({
    super.key,
    required this.characterId,
    this.characterName,
  });

  final String characterId;
  final String? characterName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return CharacterDetailsBloc(
          characterId,
          GetIt.I.get<LoadCharactersDetails>(),
        );
      },
      child: Scaffold(
        appBar: AppBar(title: CharacterDetailsTitle(fallback: characterName)),
        body: BlocListener<CharacterDetailsBloc, CharacterDetailsState>(
          listener: (context, state) {
            if (state case NotificationCharacterDetailsState(
              :DataProcessingMessage message,
            )) {
              context.showMessage(MessageMapper().localize(message));
            }
            if (state case ErrorCharacterDetailsState(
              :CharacterDetailsEvent sourceEvent,
              exception: NetworkConnectionProblemsException _,
            )) {
              context.router.navigate(
                NoConnectionRoute(
                  tryReload: () => _tryReload(context, sourceEvent),
                ),
              );
            }
          },
          child: const CharacterDetailsView(),
        ),
      ),
    );
  }

  Future<bool> _tryReload(BuildContext context, CharacterDetailsEvent event) {
    final bloc = context.read<CharacterDetailsBloc>();
    bloc.add(event);

    return bloc.stream
        .where((state) => state.sourceEvent == event)
        .map(
          (state) => switch (state) {
            IdleCharacterDetailsState() => true,
            ErrorCharacterDetailsState(
              exception: NetworkConnectionProblemsException _,
            ) =>
              false,
            _ => null,
          },
        )
        .whereNotNull()
        .first;
  }
}
