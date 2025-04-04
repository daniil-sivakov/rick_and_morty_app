// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_previews_chunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterPreviewsChunk _$CharacterPreviewsChunkFromJson(
  Map<String, dynamic> json,
) => _CharacterPreviewsChunk(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => CharacterPreview.fromJson(e as Map<String, dynamic>))
          .toList(),
  page: (json['page'] as num).toInt(),
  nextPage: (json['nextPage'] as num?)?.toInt(),
);

Map<String, dynamic> _$CharacterPreviewsChunkToJson(
  _CharacterPreviewsChunk instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page': instance.page,
  'nextPage': instance.nextPage,
};
