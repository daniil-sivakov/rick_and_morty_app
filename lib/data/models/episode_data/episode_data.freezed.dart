// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpisodeData {

 String get name; String get episode;
/// Create a copy of EpisodeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeDataCopyWith<EpisodeData> get copyWith => _$EpisodeDataCopyWithImpl<EpisodeData>(this as EpisodeData, _$identity);

  /// Serializes this EpisodeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeData&&(identical(other.name, name) || other.name == name)&&(identical(other.episode, episode) || other.episode == episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,episode);

@override
String toString() {
  return 'EpisodeData(name: $name, episode: $episode)';
}


}

/// @nodoc
abstract mixin class $EpisodeDataCopyWith<$Res>  {
  factory $EpisodeDataCopyWith(EpisodeData value, $Res Function(EpisodeData) _then) = _$EpisodeDataCopyWithImpl;
@useResult
$Res call({
 String name, String episode
});




}
/// @nodoc
class _$EpisodeDataCopyWithImpl<$Res>
    implements $EpisodeDataCopyWith<$Res> {
  _$EpisodeDataCopyWithImpl(this._self, this._then);

  final EpisodeData _self;
  final $Res Function(EpisodeData) _then;

/// Create a copy of EpisodeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? episode = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EpisodeData implements EpisodeData {
  const _EpisodeData({required this.name, required this.episode});
  factory _EpisodeData.fromJson(Map<String, dynamic> json) => _$EpisodeDataFromJson(json);

@override final  String name;
@override final  String episode;

/// Create a copy of EpisodeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeDataCopyWith<_EpisodeData> get copyWith => __$EpisodeDataCopyWithImpl<_EpisodeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeData&&(identical(other.name, name) || other.name == name)&&(identical(other.episode, episode) || other.episode == episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,episode);

@override
String toString() {
  return 'EpisodeData(name: $name, episode: $episode)';
}


}

/// @nodoc
abstract mixin class _$EpisodeDataCopyWith<$Res> implements $EpisodeDataCopyWith<$Res> {
  factory _$EpisodeDataCopyWith(_EpisodeData value, $Res Function(_EpisodeData) _then) = __$EpisodeDataCopyWithImpl;
@override @useResult
$Res call({
 String name, String episode
});




}
/// @nodoc
class __$EpisodeDataCopyWithImpl<$Res>
    implements _$EpisodeDataCopyWith<$Res> {
  __$EpisodeDataCopyWithImpl(this._self, this._then);

  final _EpisodeData _self;
  final $Res Function(_EpisodeData) _then;

/// Create a copy of EpisodeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? episode = null,}) {
  return _then(_EpisodeData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
