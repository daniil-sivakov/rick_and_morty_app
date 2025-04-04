import 'package:rick_and_morty_app/data/mappers/episode_mapper.dart';
import 'package:rick_and_morty_app/data/mappers/status_mapper.dart';
import 'package:rick_and_morty_app/data/models/character_preview_data/character_preview_data.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';

class CharacterPreviewMapper {
  List<CharacterPreview> toDomainModelList(List<CharacterPreviewData> data) {
    return data
        .map(
          (item) => CharacterPreview(
            id: item.id,
            name: item.name,
            imageUrl: item.image,
            status: StatusMapper().fromJsonKey(item.status),
            species: item.species,
            lastKnownLocation: item.location.name,
            firstSeenEpisode:
                EpisodeMapper().toDomainModelList(item.episode).last.name,
          ),
        )
        .toList();
  }
}
