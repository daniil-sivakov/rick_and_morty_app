import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
abstract class Episode with _$Episode {
  const factory Episode({
    required String name,
    required int episodeNumber,
    required int seasonNumber,
  }) = _Episode;

  factory Episode.fromJson(Map<String, Object?> json) =>
      _$EpisodeFromJson(json);
}
