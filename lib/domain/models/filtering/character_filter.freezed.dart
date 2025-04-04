// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterFilter {

 SpeciesFilterKey? get species; StatusFilterKey? get status;
/// Create a copy of CharacterFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<CharacterFilter> get copyWith => _$CharacterFilterCopyWithImpl<CharacterFilter>(this as CharacterFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterFilter&&(identical(other.species, species) || other.species == species)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,species,status);

@override
String toString() {
  return 'CharacterFilter(species: $species, status: $status)';
}


}

/// @nodoc
abstract mixin class $CharacterFilterCopyWith<$Res>  {
  factory $CharacterFilterCopyWith(CharacterFilter value, $Res Function(CharacterFilter) _then) = _$CharacterFilterCopyWithImpl;
@useResult
$Res call({
 SpeciesFilterKey? species, StatusFilterKey? status
});




}
/// @nodoc
class _$CharacterFilterCopyWithImpl<$Res>
    implements $CharacterFilterCopyWith<$Res> {
  _$CharacterFilterCopyWithImpl(this._self, this._then);

  final CharacterFilter _self;
  final $Res Function(CharacterFilter) _then;

/// Create a copy of CharacterFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? species = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesFilterKey?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusFilterKey?,
  ));
}

}


/// @nodoc


class _CharacterFilter extends CharacterFilter {
  const _CharacterFilter({required this.species, required this.status}): super._();
  

@override final  SpeciesFilterKey? species;
@override final  StatusFilterKey? status;

/// Create a copy of CharacterFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterFilterCopyWith<_CharacterFilter> get copyWith => __$CharacterFilterCopyWithImpl<_CharacterFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterFilter&&(identical(other.species, species) || other.species == species)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,species,status);

@override
String toString() {
  return 'CharacterFilter(species: $species, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CharacterFilterCopyWith<$Res> implements $CharacterFilterCopyWith<$Res> {
  factory _$CharacterFilterCopyWith(_CharacterFilter value, $Res Function(_CharacterFilter) _then) = __$CharacterFilterCopyWithImpl;
@override @useResult
$Res call({
 SpeciesFilterKey? species, StatusFilterKey? status
});




}
/// @nodoc
class __$CharacterFilterCopyWithImpl<$Res>
    implements _$CharacterFilterCopyWith<$Res> {
  __$CharacterFilterCopyWithImpl(this._self, this._then);

  final _CharacterFilter _self;
  final $Res Function(_CharacterFilter) _then;

/// Create a copy of CharacterFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? species = freezed,Object? status = freezed,}) {
  return _then(_CharacterFilter(
species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesFilterKey?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusFilterKey?,
  ));
}


}

// dart format on
