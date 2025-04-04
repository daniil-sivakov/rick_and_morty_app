// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterDetails {

 String get id; String get name; String get imageUrl; Status get status; String get species; String get gender; Location get origin; Location get lastKnownLocation; List<Episode> get episodes;
/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailsCopyWith<CharacterDetails> get copyWith => _$CharacterDetailsCopyWithImpl<CharacterDetails>(this as CharacterDetails, _$identity);

  /// Serializes this CharacterDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.lastKnownLocation, lastKnownLocation) || other.lastKnownLocation == lastKnownLocation)&&const DeepCollectionEquality().equals(other.episodes, episodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,status,species,gender,origin,lastKnownLocation,const DeepCollectionEquality().hash(episodes));

@override
String toString() {
  return 'CharacterDetails(id: $id, name: $name, imageUrl: $imageUrl, status: $status, species: $species, gender: $gender, origin: $origin, lastKnownLocation: $lastKnownLocation, episodes: $episodes)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailsCopyWith<$Res>  {
  factory $CharacterDetailsCopyWith(CharacterDetails value, $Res Function(CharacterDetails) _then) = _$CharacterDetailsCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, Status status, String species, String gender, Location origin, Location lastKnownLocation, List<Episode> episodes
});


$LocationCopyWith<$Res> get origin;$LocationCopyWith<$Res> get lastKnownLocation;

}
/// @nodoc
class _$CharacterDetailsCopyWithImpl<$Res>
    implements $CharacterDetailsCopyWith<$Res> {
  _$CharacterDetailsCopyWithImpl(this._self, this._then);

  final CharacterDetails _self;
  final $Res Function(CharacterDetails) _then;

/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? status = null,Object? species = null,Object? gender = null,Object? origin = null,Object? lastKnownLocation = null,Object? episodes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as Location,lastKnownLocation: null == lastKnownLocation ? _self.lastKnownLocation : lastKnownLocation // ignore: cast_nullable_to_non_nullable
as Location,episodes: null == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>,
  ));
}
/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get origin {
  
  return $LocationCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get lastKnownLocation {
  
  return $LocationCopyWith<$Res>(_self.lastKnownLocation, (value) {
    return _then(_self.copyWith(lastKnownLocation: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CharacterDetails implements CharacterDetails {
  const _CharacterDetails({required this.id, required this.name, required this.imageUrl, required this.status, required this.species, required this.gender, required this.origin, required this.lastKnownLocation, required final  List<Episode> episodes}): _episodes = episodes;
  factory _CharacterDetails.fromJson(Map<String, dynamic> json) => _$CharacterDetailsFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  Status status;
@override final  String species;
@override final  String gender;
@override final  Location origin;
@override final  Location lastKnownLocation;
 final  List<Episode> _episodes;
@override List<Episode> get episodes {
  if (_episodes is EqualUnmodifiableListView) return _episodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episodes);
}


/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterDetailsCopyWith<_CharacterDetails> get copyWith => __$CharacterDetailsCopyWithImpl<_CharacterDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.lastKnownLocation, lastKnownLocation) || other.lastKnownLocation == lastKnownLocation)&&const DeepCollectionEquality().equals(other._episodes, _episodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,status,species,gender,origin,lastKnownLocation,const DeepCollectionEquality().hash(_episodes));

@override
String toString() {
  return 'CharacterDetails(id: $id, name: $name, imageUrl: $imageUrl, status: $status, species: $species, gender: $gender, origin: $origin, lastKnownLocation: $lastKnownLocation, episodes: $episodes)';
}


}

/// @nodoc
abstract mixin class _$CharacterDetailsCopyWith<$Res> implements $CharacterDetailsCopyWith<$Res> {
  factory _$CharacterDetailsCopyWith(_CharacterDetails value, $Res Function(_CharacterDetails) _then) = __$CharacterDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, Status status, String species, String gender, Location origin, Location lastKnownLocation, List<Episode> episodes
});


@override $LocationCopyWith<$Res> get origin;@override $LocationCopyWith<$Res> get lastKnownLocation;

}
/// @nodoc
class __$CharacterDetailsCopyWithImpl<$Res>
    implements _$CharacterDetailsCopyWith<$Res> {
  __$CharacterDetailsCopyWithImpl(this._self, this._then);

  final _CharacterDetails _self;
  final $Res Function(_CharacterDetails) _then;

/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? status = null,Object? species = null,Object? gender = null,Object? origin = null,Object? lastKnownLocation = null,Object? episodes = null,}) {
  return _then(_CharacterDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as Location,lastKnownLocation: null == lastKnownLocation ? _self.lastKnownLocation : lastKnownLocation // ignore: cast_nullable_to_non_nullable
as Location,episodes: null == episodes ? _self._episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>,
  ));
}

/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get origin {
  
  return $LocationCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get lastKnownLocation {
  
  return $LocationCopyWith<$Res>(_self.lastKnownLocation, (value) {
    return _then(_self.copyWith(lastKnownLocation: value));
  });
}
}

// dart format on
