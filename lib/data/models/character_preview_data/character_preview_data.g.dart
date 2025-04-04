// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_preview_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterPreviewData _$CharacterPreviewDataFromJson(
  Map<String, dynamic> json,
) => _CharacterPreviewData(
  id: json['id'] as String,
  name: json['name'] as String,
  image: json['image'] as String,
  status: json['status'] as String,
  species: json['species'] as String,
  location: LocationData.fromJson(json['location'] as Map<String, dynamic>),
  episode:
      (json['episode'] as List<dynamic>)
          .map((e) => EpisodeData.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CharacterPreviewDataToJson(
  _CharacterPreviewData instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'status': instance.status,
  'species': instance.species,
  'location': instance.location.toJson(),
  'episode': instance.episode.map((e) => e.toJson()).toList(),
};
