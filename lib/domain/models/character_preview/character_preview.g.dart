// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterPreview _$CharacterPreviewFromJson(Map<String, dynamic> json) =>
    _CharacterPreview(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      species: json['species'] as String,
      lastKnownLocation: json['lastKnownLocation'] as String,
      firstSeenEpisode: json['firstSeenEpisode'] as String,
    );

Map<String, dynamic> _$CharacterPreviewToJson(_CharacterPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'status': _$StatusEnumMap[instance.status]!,
      'species': instance.species,
      'lastKnownLocation': instance.lastKnownLocation,
      'firstSeenEpisode': instance.firstSeenEpisode,
    };

const _$StatusEnumMap = {
  Status.alive: 'alive',
  Status.dead: 'dead',
  Status.unknown: 'unknown',
};
