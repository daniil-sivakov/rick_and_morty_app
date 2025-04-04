// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Episode _$EpisodeFromJson(Map<String, dynamic> json) => _Episode(
  name: json['name'] as String,
  episodeNumber: (json['episodeNumber'] as num).toInt(),
  seasonNumber: (json['seasonNumber'] as num).toInt(),
);

Map<String, dynamic> _$EpisodeToJson(_Episode instance) => <String, dynamic>{
  'name': instance.name,
  'episodeNumber': instance.episodeNumber,
  'seasonNumber': instance.seasonNumber,
};
