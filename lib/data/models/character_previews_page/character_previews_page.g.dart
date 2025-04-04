// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_previews_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterPreviewsPage _$CharacterPreviewsPageFromJson(
  Map<String, dynamic> json,
) => _CharacterPreviewsPage(
  info: PaginationData.fromJson(json['info'] as Map<String, dynamic>),
  results:
      (json['results'] as List<dynamic>)
          .map((e) => CharacterPreviewData.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CharacterPreviewsPageToJson(
  _CharacterPreviewsPage instance,
) => <String, dynamic>{
  'info': instance.info.toJson(),
  'results': instance.results.map((e) => e.toJson()).toList(),
};
