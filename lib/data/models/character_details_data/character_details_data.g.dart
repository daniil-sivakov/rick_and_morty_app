// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_details_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterDetailsData _$CharacterDetailsDataFromJson(
  Map<String, dynamic> json,
) => _CharacterDetailsData(
  id: json['id'] as String,
  name: json['name'] as String,
  image: json['image'] as String,
  species: json['species'] as String,
  gender: json['gender'] as String,
  status: json['status'] as String,
  origin: LocationData.fromJson(json['origin'] as Map<String, dynamic>),
  location: LocationData.fromJson(json['location'] as Map<String, dynamic>),
  episode:
      (json['episode'] as List<dynamic>)
          .map((e) => EpisodeData.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CharacterDetailsDataToJson(
  _CharacterDetailsData instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'species': instance.species,
  'gender': instance.gender,
  'status': instance.status,
  'origin': instance.origin.toJson(),
  'location': instance.location.toJson(),
  'episode': instance.episode.map((e) => e.toJson()).toList(),
};
