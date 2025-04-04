import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_state.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/widgets/character_details_header.dart';
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/widgets/character_details_status.dart';
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/widgets/character_details_episodes_sliver_list.dart';
import 'package:rick_and_morty_app/presentation/widgets/loading_state.dart';

class CharacterDetailsView extends StatefulWidget {
  const CharacterDetailsView({super.key});

  @override
  State<CharacterDetailsView> createState() => _CharacterDetailsViewState();
}

class _CharacterDetailsViewState extends State<CharacterDetailsView> {
  @override
  void initState() {
    super.initState();

    final CharacterDetailsBloc bloc = context.read<CharacterDetailsBloc>();
    bloc.add(CharacterDetailsEvent.reload());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterDetailsBloc, CharacterDetailsState>(
      builder: (context, state) {
        return LoadingState(
          loadingIndicator: LoadingIndicator.circular,
          inProgress: state is ProcessingCharacterDetailsState,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CharacterDetailsHeader()),
              SliverPadding(
                padding: EdgeInsets.all(8),
                sliver: SliverToBoxAdapter(child: CharacterDetailsStatus()),
              ),
              SliverPadding(
                padding: EdgeInsets.all(8),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    LocalizationPlug.episodesSectionLabel,
                    style: TextTheme.of(context).titleLarge,
                  ),
                ),
              ),
              CharacterDetailsEpisodesSliverList(),
            ],
          ),
        );
      },
    );
  }
}
