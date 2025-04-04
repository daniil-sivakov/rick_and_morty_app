import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/character_simple_properties.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/episode.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/location.dart';

part 'character_details.freezed.dart';
part 'character_details.g.dart';

@freezed
abstract class CharacterDetails with _$CharacterDetails {
  const factory CharacterDetails({
    required String id,
    required String name,
    required String imageUrl,
    required Status status,
    required String species,
    required String gender,
    required Location origin,
    required Location lastKnownLocation,
    required List<Episode> episodes,
  }) = _CharacterDetails;

  static CharacterDetails fromPreview(CharacterPreview preview) {
    return CharacterDetails(
      id: preview.id,
      name: preview.name,
      imageUrl: preview.imageUrl,
      status: preview.status,
      species: preview.species,
      gender: '',
      origin: Location(name: ''),
      lastKnownLocation: Location(name: preview.lastKnownLocation),
      episodes: [],
    );
  }

  factory CharacterDetails.fromJson(Map<String, Object?> json) =>
      _$CharacterDetailsFromJson(json);
}
