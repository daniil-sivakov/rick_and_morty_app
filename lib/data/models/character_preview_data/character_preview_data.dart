import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/data/models/episode_data/episode_data.dart';
import 'package:rick_and_morty_app/data/models/location_data/location_data.dart';

part 'character_preview_data.freezed.dart';
part 'character_preview_data.g.dart';

@freezed
abstract class CharacterPreviewData with _$CharacterPreviewData {
  const factory CharacterPreviewData({
    required String id,
    required String name,
    required String image,
    required String status,
    required String species,
    required LocationData location,
    required List<EpisodeData> episode,
  }) = _CharacterPreviewData;

  factory CharacterPreviewData.fromJson(Map<String, Object?> json) =>
      _$CharacterPreviewDataFromJson(json);
}
