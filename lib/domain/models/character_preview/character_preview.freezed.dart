// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterPreview {

 String get id; String get name; String get imageUrl; Status get status; String get species; String get lastKnownLocation; String get firstSeenEpisode;
/// Create a copy of CharacterPreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterPreviewCopyWith<CharacterPreview> get copyWith => _$CharacterPreviewCopyWithImpl<CharacterPreview>(this as CharacterPreview, _$identity);

  /// Serializes this CharacterPreview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterPreview&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.lastKnownLocation, lastKnownLocation) || other.lastKnownLocation == lastKnownLocation)&&(identical(other.firstSeenEpisode, firstSeenEpisode) || other.firstSeenEpisode == firstSeenEpisode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,status,species,lastKnownLocation,firstSeenEpisode);

@override
String toString() {
  return 'CharacterPreview(id: $id, name: $name, imageUrl: $imageUrl, status: $status, species: $species, lastKnownLocation: $lastKnownLocation, firstSeenEpisode: $firstSeenEpisode)';
}


}

/// @nodoc
abstract mixin class $CharacterPreviewCopyWith<$Res>  {
  factory $CharacterPreviewCopyWith(CharacterPreview value, $Res Function(CharacterPreview) _then) = _$CharacterPreviewCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, Status status, String species, String lastKnownLocation, String firstSeenEpisode
});




}
/// @nodoc
class _$CharacterPreviewCopyWithImpl<$Res>
    implements $CharacterPreviewCopyWith<$Res> {
  _$CharacterPreviewCopyWithImpl(this._self, this._then);

  final CharacterPreview _self;
  final $Res Function(CharacterPreview) _then;

/// Create a copy of CharacterPreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? status = null,Object? species = null,Object? lastKnownLocation = null,Object? firstSeenEpisode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,lastKnownLocation: null == lastKnownLocation ? _self.lastKnownLocation : lastKnownLocation // ignore: cast_nullable_to_non_nullable
as String,firstSeenEpisode: null == firstSeenEpisode ? _self.firstSeenEpisode : firstSeenEpisode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CharacterPreview implements CharacterPreview {
  const _CharacterPreview({required this.id, required this.name, required this.imageUrl, required this.status, required this.species, required this.lastKnownLocation, required this.firstSeenEpisode});
  factory _CharacterPreview.fromJson(Map<String, dynamic> json) => _$CharacterPreviewFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  Status status;
@override final  String species;
@override final  String lastKnownLocation;
@override final  String firstSeenEpisode;

/// Create a copy of CharacterPreview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterPreviewCopyWith<_CharacterPreview> get copyWith => __$CharacterPreviewCopyWithImpl<_CharacterPreview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterPreviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterPreview&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.lastKnownLocation, lastKnownLocation) || other.lastKnownLocation == lastKnownLocation)&&(identical(other.firstSeenEpisode, firstSeenEpisode) || other.firstSeenEpisode == firstSeenEpisode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,status,species,lastKnownLocation,firstSeenEpisode);

@override
String toString() {
  return 'CharacterPreview(id: $id, name: $name, imageUrl: $imageUrl, status: $status, species: $species, lastKnownLocation: $lastKnownLocation, firstSeenEpisode: $firstSeenEpisode)';
}


}

/// @nodoc
abstract mixin class _$CharacterPreviewCopyWith<$Res> implements $CharacterPreviewCopyWith<$Res> {
  factory _$CharacterPreviewCopyWith(_CharacterPreview value, $Res Function(_CharacterPreview) _then) = __$CharacterPreviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, Status status, String species, String lastKnownLocation, String firstSeenEpisode
});




}
/// @nodoc
class __$CharacterPreviewCopyWithImpl<$Res>
    implements _$CharacterPreviewCopyWith<$Res> {
  __$CharacterPreviewCopyWithImpl(this._self, this._then);

  final _CharacterPreview _self;
  final $Res Function(_CharacterPreview) _then;

/// Create a copy of CharacterPreview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? status = null,Object? species = null,Object? lastKnownLocation = null,Object? firstSeenEpisode = null,}) {
  return _then(_CharacterPreview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,lastKnownLocation: null == lastKnownLocation ? _self.lastKnownLocation : lastKnownLocation // ignore: cast_nullable_to_non_nullable
as String,firstSeenEpisode: null == firstSeenEpisode ? _self.firstSeenEpisode : firstSeenEpisode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
