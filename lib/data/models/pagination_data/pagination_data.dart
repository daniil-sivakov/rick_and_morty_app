import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_data.freezed.dart';
part 'pagination_data.g.dart';

@freezed
abstract class PaginationData with _$PaginationData {
  const factory PaginationData({required int? next}) = _PaginationData;

  factory PaginationData.fromJson(Map<String, Object?> json) =>
      _$PaginationDataFromJson(json);
}
