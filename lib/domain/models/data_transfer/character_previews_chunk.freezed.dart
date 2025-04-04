// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_previews_chunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterPreviewsChunk {

 List<CharacterPreview> get data; int get page; int? get nextPage;
/// Create a copy of CharacterPreviewsChunk
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterPreviewsChunkCopyWith<CharacterPreviewsChunk> get copyWith => _$CharacterPreviewsChunkCopyWithImpl<CharacterPreviewsChunk>(this as CharacterPreviewsChunk, _$identity);

  /// Serializes this CharacterPreviewsChunk to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterPreviewsChunk&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.page, page) || other.page == page)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),page,nextPage);

@override
String toString() {
  return 'CharacterPreviewsChunk(data: $data, page: $page, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class $CharacterPreviewsChunkCopyWith<$Res>  {
  factory $CharacterPreviewsChunkCopyWith(CharacterPreviewsChunk value, $Res Function(CharacterPreviewsChunk) _then) = _$CharacterPreviewsChunkCopyWithImpl;
@useResult
$Res call({
 List<CharacterPreview> data, int page, int? nextPage
});




}
/// @nodoc
class _$CharacterPreviewsChunkCopyWithImpl<$Res>
    implements $CharacterPreviewsChunkCopyWith<$Res> {
  _$CharacterPreviewsChunkCopyWithImpl(this._self, this._then);

  final CharacterPreviewsChunk _self;
  final $Res Function(CharacterPreviewsChunk) _then;

/// Create a copy of CharacterPreviewsChunk
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? page = null,Object? nextPage = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CharacterPreviewsChunk implements CharacterPreviewsChunk {
  const _CharacterPreviewsChunk({required final  List<CharacterPreview> data, required this.page, required this.nextPage}): _data = data;
  factory _CharacterPreviewsChunk.fromJson(Map<String, dynamic> json) => _$CharacterPreviewsChunkFromJson(json);

 final  List<CharacterPreview> _data;
@override List<CharacterPreview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  int page;
@override final  int? nextPage;

/// Create a copy of CharacterPreviewsChunk
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterPreviewsChunkCopyWith<_CharacterPreviewsChunk> get copyWith => __$CharacterPreviewsChunkCopyWithImpl<_CharacterPreviewsChunk>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterPreviewsChunkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterPreviewsChunk&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.page, page) || other.page == page)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),page,nextPage);

@override
String toString() {
  return 'CharacterPreviewsChunk(data: $data, page: $page, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class _$CharacterPreviewsChunkCopyWith<$Res> implements $CharacterPreviewsChunkCopyWith<$Res> {
  factory _$CharacterPreviewsChunkCopyWith(_CharacterPreviewsChunk value, $Res Function(_CharacterPreviewsChunk) _then) = __$CharacterPreviewsChunkCopyWithImpl;
@override @useResult
$Res call({
 List<CharacterPreview> data, int page, int? nextPage
});




}
/// @nodoc
class __$CharacterPreviewsChunkCopyWithImpl<$Res>
    implements _$CharacterPreviewsChunkCopyWith<$Res> {
  __$CharacterPreviewsChunkCopyWithImpl(this._self, this._then);

  final _CharacterPreviewsChunk _self;
  final $Res Function(_CharacterPreviewsChunk) _then;

/// Create a copy of CharacterPreviewsChunk
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? page = null,Object? nextPage = freezed,}) {
  return _then(_CharacterPreviewsChunk(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
