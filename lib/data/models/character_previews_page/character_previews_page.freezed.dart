// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_previews_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterPreviewsPage {

 PaginationData get info; List<CharacterPreviewData> get results;
/// Create a copy of CharacterPreviewsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterPreviewsPageCopyWith<CharacterPreviewsPage> get copyWith => _$CharacterPreviewsPageCopyWithImpl<CharacterPreviewsPage>(this as CharacterPreviewsPage, _$identity);

  /// Serializes this CharacterPreviewsPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterPreviewsPage&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'CharacterPreviewsPage(info: $info, results: $results)';
}


}

/// @nodoc
abstract mixin class $CharacterPreviewsPageCopyWith<$Res>  {
  factory $CharacterPreviewsPageCopyWith(CharacterPreviewsPage value, $Res Function(CharacterPreviewsPage) _then) = _$CharacterPreviewsPageCopyWithImpl;
@useResult
$Res call({
 PaginationData info, List<CharacterPreviewData> results
});


$PaginationDataCopyWith<$Res> get info;

}
/// @nodoc
class _$CharacterPreviewsPageCopyWithImpl<$Res>
    implements $CharacterPreviewsPageCopyWith<$Res> {
  _$CharacterPreviewsPageCopyWithImpl(this._self, this._then);

  final CharacterPreviewsPage _self;
  final $Res Function(CharacterPreviewsPage) _then;

/// Create a copy of CharacterPreviewsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? results = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PaginationData,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<CharacterPreviewData>,
  ));
}
/// Create a copy of CharacterPreviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res> get info {
  
  return $PaginationDataCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CharacterPreviewsPage implements CharacterPreviewsPage {
  const _CharacterPreviewsPage({required this.info, required final  List<CharacterPreviewData> results}): _results = results;
  factory _CharacterPreviewsPage.fromJson(Map<String, dynamic> json) => _$CharacterPreviewsPageFromJson(json);

@override final  PaginationData info;
 final  List<CharacterPreviewData> _results;
@override List<CharacterPreviewData> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of CharacterPreviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterPreviewsPageCopyWith<_CharacterPreviewsPage> get copyWith => __$CharacterPreviewsPageCopyWithImpl<_CharacterPreviewsPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterPreviewsPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterPreviewsPage&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'CharacterPreviewsPage(info: $info, results: $results)';
}


}

/// @nodoc
abstract mixin class _$CharacterPreviewsPageCopyWith<$Res> implements $CharacterPreviewsPageCopyWith<$Res> {
  factory _$CharacterPreviewsPageCopyWith(_CharacterPreviewsPage value, $Res Function(_CharacterPreviewsPage) _then) = __$CharacterPreviewsPageCopyWithImpl;
@override @useResult
$Res call({
 PaginationData info, List<CharacterPreviewData> results
});


@override $PaginationDataCopyWith<$Res> get info;

}
/// @nodoc
class __$CharacterPreviewsPageCopyWithImpl<$Res>
    implements _$CharacterPreviewsPageCopyWith<$Res> {
  __$CharacterPreviewsPageCopyWithImpl(this._self, this._then);

  final _CharacterPreviewsPage _self;
  final $Res Function(_CharacterPreviewsPage) _then;

/// Create a copy of CharacterPreviewsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? results = null,}) {
  return _then(_CharacterPreviewsPage(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PaginationData,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<CharacterPreviewData>,
  ));
}

/// Create a copy of CharacterPreviewsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<$Res> get info {
  
  return $PaginationDataCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on
