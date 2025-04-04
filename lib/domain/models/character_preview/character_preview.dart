import 'package:rick_and_morty_app/domain/models/character_properties/character_simple_properties.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_preview.freezed.dart';
part 'character_preview.g.dart';

@freezed
abstract class CharacterPreview with _$CharacterPreview {
  const factory CharacterPreview({
    required String id,
    required String name,
    required String imageUrl,
    required Status status,
    required String species,
    required String lastKnownLocation,
    required String firstSeenEpisode,
  }) = _CharacterPreview;

  factory CharacterPreview.fromJson(Map<String, Object?> json) =>
      _$CharacterPreviewFromJson(json);
}
