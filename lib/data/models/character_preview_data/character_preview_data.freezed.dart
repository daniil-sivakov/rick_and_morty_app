// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_preview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterPreviewData {

 String get id; String get name; String get image; String get status; String get species; LocationData get location; List<EpisodeData> get episode;
/// Create a copy of CharacterPreviewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterPreviewDataCopyWith<CharacterPreviewData> get copyWith => _$CharacterPreviewDataCopyWithImpl<CharacterPreviewData>(this as CharacterPreviewData, _$identity);

  /// Serializes this CharacterPreviewData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterPreviewData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.episode, episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,species,location,const DeepCollectionEquality().hash(episode));

@override
String toString() {
  return 'CharacterPreviewData(id: $id, name: $name, image: $image, status: $status, species: $species, location: $location, episode: $episode)';
}


}

/// @nodoc
abstract mixin class $CharacterPreviewDataCopyWith<$Res>  {
  factory $CharacterPreviewDataCopyWith(CharacterPreviewData value, $Res Function(CharacterPreviewData) _then) = _$CharacterPreviewDataCopyWithImpl;
@useResult
$Res call({
 String id, String name, String image, String status, String species, LocationData location, List<EpisodeData> episode
});


$LocationDataCopyWith<$Res> get location;

}
/// @nodoc
class _$CharacterPreviewDataCopyWithImpl<$Res>
    implements $CharacterPreviewDataCopyWith<$Res> {
  _$CharacterPreviewDataCopyWithImpl(this._self, this._then);

  final CharacterPreviewData _self;
  final $Res Function(CharacterPreviewData) _then;

/// Create a copy of CharacterPreviewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? species = null,Object? location = null,Object? episode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationData,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as List<EpisodeData>,
  ));
}
/// Create a copy of CharacterPreviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDataCopyWith<$Res> get location {
  
  return $LocationDataCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CharacterPreviewData implements CharacterPreviewData {
  const _CharacterPreviewData({required this.id, required this.name, required this.image, required this.status, required this.species, required this.location, required final  List<EpisodeData> episode}): _episode = episode;
  factory _CharacterPreviewData.fromJson(Map<String, dynamic> json) => _$CharacterPreviewDataFromJson(json);

@override final  String id;
@override final  String name;
@override final  String image;
@override final  String status;
@override final  String species;
@override final  LocationData location;
 final  List<EpisodeData> _episode;
@override List<EpisodeData> get episode {
  if (_episode is EqualUnmodifiableListView) return _episode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episode);
}


/// Create a copy of CharacterPreviewData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterPreviewDataCopyWith<_CharacterPreviewData> get copyWith => __$CharacterPreviewDataCopyWithImpl<_CharacterPreviewData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterPreviewDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterPreviewData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._episode, _episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,species,location,const DeepCollectionEquality().hash(_episode));

@override
String toString() {
  return 'CharacterPreviewData(id: $id, name: $name, image: $image, status: $status, species: $species, location: $location, episode: $episode)';
}


}

/// @nodoc
abstract mixin class _$CharacterPreviewDataCopyWith<$Res> implements $CharacterPreviewDataCopyWith<$Res> {
  factory _$CharacterPreviewDataCopyWith(_CharacterPreviewData value, $Res Function(_CharacterPreviewData) _then) = __$CharacterPreviewDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String image, String status, String species, LocationData location, List<EpisodeData> episode
});


@override $LocationDataCopyWith<$Res> get location;

}
/// @nodoc
class __$CharacterPreviewDataCopyWithImpl<$Res>
    implements _$CharacterPreviewDataCopyWith<$Res> {
  __$CharacterPreviewDataCopyWithImpl(this._self, this._then);

  final _CharacterPreviewData _self;
  final $Res Function(_CharacterPreviewData) _then;

/// Create a copy of CharacterPreviewData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? species = null,Object? location = null,Object? episode = null,}) {
  return _then(_CharacterPreviewData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationData,episode: null == episode ? _self._episode : episode // ignore: cast_nullable_to_non_nullable
as List<EpisodeData>,
  ));
}

/// Create a copy of CharacterPreviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDataCopyWith<$Res> get location {
  
  return $LocationDataCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
