import 'package:rick_and_morty_app/data/models/episode_data/episode_data.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/episode.dart';

class EpisodeMapper {
  List<Episode> toDomainModelList(List<EpisodeData> data) {
    return data
        .map(
          (item) => Episode(
            name: item.name,
            episodeNumber: _extractEpisodeNumber(item),
            seasonNumber: _extractSeasonNumber(item),
          ),
        )
        .toList();
  }

  int _extractEpisodeNumber(EpisodeData data) {
    return int.parse(data.episode.split('E')[1]);
  }

  int _extractSeasonNumber(EpisodeData data) {
    return int.parse(data.episode.split('E')[0].substring(1));
  }
}
