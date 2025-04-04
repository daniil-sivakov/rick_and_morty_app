// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterDetails _$CharacterDetailsFromJson(Map<String, dynamic> json) =>
    _CharacterDetails(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      species: json['species'] as String,
      gender: json['gender'] as String,
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      lastKnownLocation: Location.fromJson(
        json['lastKnownLocation'] as Map<String, dynamic>,
      ),
      episodes:
          (json['episodes'] as List<dynamic>)
              .map((e) => Episode.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$CharacterDetailsToJson(_CharacterDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'status': _$StatusEnumMap[instance.status]!,
      'species': instance.species,
      'gender': instance.gender,
      'origin': instance.origin.toJson(),
      'lastKnownLocation': instance.lastKnownLocation.toJson(),
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
    };

const _$StatusEnumMap = {
  Status.alive: 'alive',
  Status.dead: 'dead',
  Status.unknown: 'unknown',
};
