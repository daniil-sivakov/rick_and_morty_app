import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_data.freezed.dart';
part 'location_data.g.dart';

@freezed
abstract class LocationData with _$LocationData {
  const factory LocationData({required String name}) = _LocationData;

  factory LocationData.fromJson(Map<String, Object?> json) =>
      _$LocationDataFromJson(json);
}
