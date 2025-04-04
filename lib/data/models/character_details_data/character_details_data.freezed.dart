// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterDetailsData {

 String get id; String get name; String get image; String get species; String get gender; String get status; LocationData get origin; LocationData get location; List<EpisodeData> get episode;
/// Create a copy of CharacterDetailsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailsDataCopyWith<CharacterDetailsData> get copyWith => _$CharacterDetailsDataCopyWithImpl<CharacterDetailsData>(this as CharacterDetailsData, _$identity);

  /// Serializes this CharacterDetailsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetailsData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.status, status) || other.status == status)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.episode, episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,species,gender,status,origin,location,const DeepCollectionEquality().hash(episode));

@override
String toString() {
  return 'CharacterDetailsData(id: $id, name: $name, image: $image, species: $species, gender: $gender, status: $status, origin: $origin, location: $location, episode: $episode)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailsDataCopyWith<$Res>  {
  factory $CharacterDetailsDataCopyWith(CharacterDetailsData value, $Res Function(CharacterDetailsData) _then) = _$CharacterDetailsDataCopyWithImpl;
@useResult
$Res call({
 String id, String name, String image, String species, String gender, String status, LocationData origin, LocationData location, List<EpisodeData> episode
});


$LocationDataCopyWith<$Res> get origin;$LocationDataCopyWith<$Res> get location;

}
/// @nodoc
class _$CharacterDetailsDataCopyWithImpl<$Res>
    implements $CharacterDetailsDataCopyWith<$Res> {
  _$CharacterDetailsDataCopyWithImpl(this._self, this._then);

  final CharacterDetailsData _self;
  final $Res Function(CharacterDetailsData) _then;

/// Create a copy of CharacterDetailsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? species = null,Object? gender = null,Object? status = null,Object? origin = null,Object? location = null,Object? episode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as LocationData,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationData,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as List<EpisodeData>,
  ));
}
/// Create a copy of CharacterDetailsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDataCopyWith<$Res> get origin {
  
  return $LocationDataCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterDetailsData
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

class _CharacterDetailsData implements CharacterDetailsData {
  const _CharacterDetailsData({required this.id, required this.name, required this.image, required this.species, required this.gender, required this.status, required this.origin, required this.location, required final  List<EpisodeData> episode}): _episode = episode;
  factory _CharacterDetailsData.fromJson(Map<String, dynamic> json) => _$CharacterDetailsDataFromJson(json);

@override final  String id;
@override final  String name;
@override final  String image;
@override final  String species;
@override final  String gender;
@override final  String status;
@override final  LocationData origin;
@override final  LocationData location;
 final  List<EpisodeData> _episode;
@override List<EpisodeData> get episode {
  if (_episode is EqualUnmodifiableListView) return _episode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episode);
}


/// Create a copy of CharacterDetailsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterDetailsDataCopyWith<_CharacterDetailsData> get copyWith => __$CharacterDetailsDataCopyWithImpl<_CharacterDetailsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterDetailsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterDetailsData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.status, status) || other.status == status)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._episode, _episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,species,gender,status,origin,location,const DeepCollectionEquality().hash(_episode));

@override
String toString() {
  return 'CharacterDetailsData(id: $id, name: $name, image: $image, species: $species, gender: $gender, status: $status, origin: $origin, location: $location, episode: $episode)';
}


}

/// @nodoc
abstract mixin class _$CharacterDetailsDataCopyWith<$Res> implements $CharacterDetailsDataCopyWith<$Res> {
  factory _$CharacterDetailsDataCopyWith(_CharacterDetailsData value, $Res Function(_CharacterDetailsData) _then) = __$CharacterDetailsDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String image, String species, String gender, String status, LocationData origin, LocationData location, List<EpisodeData> episode
});


@override $LocationDataCopyWith<$Res> get origin;@override $LocationDataCopyWith<$Res> get location;

}
/// @nodoc
class __$CharacterDetailsDataCopyWithImpl<$Res>
    implements _$CharacterDetailsDataCopyWith<$Res> {
  __$CharacterDetailsDataCopyWithImpl(this._self, this._then);

  final _CharacterDetailsData _self;
  final $Res Function(_CharacterDetailsData) _then;

/// Create a copy of CharacterDetailsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? species = null,Object? gender = null,Object? status = null,Object? origin = null,Object? location = null,Object? episode = null,}) {
  return _then(_CharacterDetailsData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as LocationData,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationData,episode: null == episode ? _self._episode : episode // ignore: cast_nullable_to_non_nullable
as List<EpisodeData>,
  ));
}

/// Create a copy of CharacterDetailsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDataCopyWith<$Res> get origin {
  
  return $LocationDataCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterDetailsData
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
