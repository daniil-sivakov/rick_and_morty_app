import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/episode.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';

class CharacterDetailsEpisodesSliverList extends StatelessWidget {
  const CharacterDetailsEpisodesSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Episode> episodes = context.select(
      (CharacterDetailsBloc bloc) => bloc.state.details?.episodes ?? [],
    );

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final Episode episode = episodes[index];

        return ListTile(
          title: Text(episode.name),
          subtitle: Text(
            '${LocalizationPlug.seasonLabel} ${episode.seasonNumber}'
            ', ${LocalizationPlug.episodeLabel} ${episode.episodeNumber}',
          ),
        );
      }, childCount: episodes.length),
    );
  }
}
