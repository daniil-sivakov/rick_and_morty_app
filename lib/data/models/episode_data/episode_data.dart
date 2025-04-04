import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_data.freezed.dart';
part 'episode_data.g.dart';

@freezed
abstract class EpisodeData with _$EpisodeData {
  const factory EpisodeData({required String name, required String episode}) =
      _EpisodeData;

  factory EpisodeData.fromJson(Map<String, Object?> json) =>
      _$EpisodeDataFromJson(json);
}
