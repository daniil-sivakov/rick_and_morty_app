import 'package:rick_and_morty_app/data/mappers/episode_mapper.dart';
import 'package:rick_and_morty_app/data/mappers/location_mapper.dart';
import 'package:rick_and_morty_app/data/mappers/status_mapper.dart';
import 'package:rick_and_morty_app/data/models/character_details_data/character_details_data.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';

class CharacterDetailsMapper {
  CharacterDetails toDomainModel(CharacterDetailsData data) {
    return CharacterDetails(
      id: data.id,
      name: data.name,
      imageUrl: data.image,
      status: StatusMapper().fromJsonKey(data.status),
      species: data.species,
      gender: data.gender,
      origin: LocationMapper().toDomainModel(data.location),
      lastKnownLocation: LocationMapper().toDomainModel(data.location),
      episodes: EpisodeMapper().toDomainModelList(data.episode),
    );
  }
}
