import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';

part 'character_previews_chunk.freezed.dart';
part 'character_previews_chunk.g.dart';

@freezed
abstract class CharacterPreviewsChunk with _$CharacterPreviewsChunk {
  const factory CharacterPreviewsChunk({
    required List<CharacterPreview> data,
    required int page,
    required int? nextPage,
  }) = _CharacterPreviewsChunk;

  factory CharacterPreviewsChunk.fromJson(Map<String, Object?> json) =>
      _$CharacterPreviewsChunkFromJson(json);
}
