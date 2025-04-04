import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/data/models/episode_data/episode_data.dart';
import 'package:rick_and_morty_app/data/models/location_data/location_data.dart';

part 'character_details_data.freezed.dart';
part 'character_details_data.g.dart';

@freezed
abstract class CharacterDetailsData with _$CharacterDetailsData {
  const factory CharacterDetailsData({
    required String id,
    required String name,
    required String image,
    required String species,
    required String gender,
    required String status,
    required LocationData origin,
    required LocationData location,
    required List<EpisodeData> episode,
  }) = _CharacterDetailsData;

  factory CharacterDetailsData.fromJson(Map<String, Object?> json) =>
      _$CharacterDetailsDataFromJson(json);
}
