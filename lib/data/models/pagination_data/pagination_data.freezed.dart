// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationData {

 int? get next;
/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<PaginationData> get copyWith => _$PaginationDataCopyWithImpl<PaginationData>(this as PaginationData, _$identity);

  /// Serializes this PaginationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationData&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,next);

@override
String toString() {
  return 'PaginationData(next: $next)';
}


}

/// @nodoc
abstract mixin class $PaginationDataCopyWith<$Res>  {
  factory $PaginationDataCopyWith(PaginationData value, $Res Function(PaginationData) _then) = _$PaginationDataCopyWithImpl;
@useResult
$Res call({
 int? next
});




}
/// @nodoc
class _$PaginationDataCopyWithImpl<$Res>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._self, this._then);

  final PaginationData _self;
  final $Res Function(PaginationData) _then;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? next = freezed,}) {
  return _then(_self.copyWith(
next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PaginationData implements PaginationData {
  const _PaginationData({required this.next});
  factory _PaginationData.fromJson(Map<String, dynamic> json) => _$PaginationDataFromJson(json);

@override final  int? next;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationDataCopyWith<_PaginationData> get copyWith => __$PaginationDataCopyWithImpl<_PaginationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationData&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,next);

@override
String toString() {
  return 'PaginationData(next: $next)';
}


}

/// @nodoc
abstract mixin class _$PaginationDataCopyWith<$Res> implements $PaginationDataCopyWith<$Res> {
  factory _$PaginationDataCopyWith(_PaginationData value, $Res Function(_PaginationData) _then) = __$PaginationDataCopyWithImpl;
@override @useResult
$Res call({
 int? next
});




}
/// @nodoc
class __$PaginationDataCopyWithImpl<$Res>
    implements _$PaginationDataCopyWith<$Res> {
  __$PaginationDataCopyWithImpl(this._self, this._then);

  final _PaginationData _self;
  final $Res Function(_PaginationData) _then;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? next = freezed,}) {
  return _then(_PaginationData(
next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
