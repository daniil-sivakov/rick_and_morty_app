import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_state.dart';
import 'package:rick_and_morty_app/presentation/navigation/app_router.gr.dart';
import 'package:rick_and_morty_app/presentation/screens/character_list_screen/widgets/character_preview_tile.dart';
import 'package:rick_and_morty_app/presentation/widgets/endless_pagination_view.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({super.key});

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  late final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    final bloc = context.read<CharacterPreviewBloc>();
    bloc.add(CharacterPreviewEvent.reload());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CharacterPreviewBloc, CharacterPreviewState>(
      listener: (_, state) {
        if (state is FullReloadCompletedCharacterPreviewState) {
          _scrollController.jumpTo(0);
        }
      },
      builder: (_, state) {
        return EndlessPaginationView(
          scrollController: _scrollController,
          itemCount: state.data.length,
          isNextPageLoading: state is NextPageLoadingCharacterPreviewState,
          onRequestNextPage: () {
            final bloc = context.read<CharacterPreviewBloc>();
            bloc.add(CharacterPreviewEvent.requestNewPage());
          },
          canRequestNewPage: !state.endOfListReached,
          itemBuilder: (context, index) {
            final CharacterPreview character = state.data[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CharacterPreviewTile(
                character: character,
                onTap: () {
                  final String characterId = character.id;
                  final String characterName = character.name;

                  context.router.push(
                    CharacterDetailsRoute(
                      characterId: characterId,
                      characterName: characterName,
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }
}
