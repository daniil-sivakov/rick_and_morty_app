// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterDetailsState {

 CharacterDetailsEvent? get sourceEvent; CharacterDetails? get details;
/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailsStateCopyWith<CharacterDetailsState> get copyWith => _$CharacterDetailsStateCopyWithImpl<CharacterDetailsState>(this as CharacterDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetailsState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,details);

@override
String toString() {
  return 'CharacterDetailsState(sourceEvent: $sourceEvent, details: $details)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailsStateCopyWith<$Res>  {
  factory $CharacterDetailsStateCopyWith(CharacterDetailsState value, $Res Function(CharacterDetailsState) _then) = _$CharacterDetailsStateCopyWithImpl;
@useResult
$Res call({
 CharacterDetailsEvent? sourceEvent, CharacterDetails? details
});


$CharacterDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$CharacterDetailsStateCopyWithImpl<$Res>
    implements $CharacterDetailsStateCopyWith<$Res> {
  _$CharacterDetailsStateCopyWithImpl(this._self, this._then);

  final CharacterDetailsState _self;
  final $Res Function(CharacterDetailsState) _then;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sourceEvent = freezed,Object? details = freezed,}) {
  return _then(_self.copyWith(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterDetailsEvent?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as CharacterDetails?,
  ));
}
/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $CharacterDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// @nodoc


class IdleCharacterDetailsState implements CharacterDetailsState {
  const IdleCharacterDetailsState({required this.sourceEvent, required this.details});
  

@override final  CharacterDetailsEvent? sourceEvent;
@override final  CharacterDetails? details;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdleCharacterDetailsStateCopyWith<IdleCharacterDetailsState> get copyWith => _$IdleCharacterDetailsStateCopyWithImpl<IdleCharacterDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdleCharacterDetailsState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,details);

@override
String toString() {
  return 'CharacterDetailsState._idle(sourceEvent: $sourceEvent, details: $details)';
}


}

/// @nodoc
abstract mixin class $IdleCharacterDetailsStateCopyWith<$Res> implements $CharacterDetailsStateCopyWith<$Res> {
  factory $IdleCharacterDetailsStateCopyWith(IdleCharacterDetailsState value, $Res Function(IdleCharacterDetailsState) _then) = _$IdleCharacterDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterDetailsEvent? sourceEvent, CharacterDetails? details
});


@override $CharacterDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$IdleCharacterDetailsStateCopyWithImpl<$Res>
    implements $IdleCharacterDetailsStateCopyWith<$Res> {
  _$IdleCharacterDetailsStateCopyWithImpl(this._self, this._then);

  final IdleCharacterDetailsState _self;
  final $Res Function(IdleCharacterDetailsState) _then;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? details = freezed,}) {
  return _then(IdleCharacterDetailsState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterDetailsEvent?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as CharacterDetails?,
  ));
}

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $CharacterDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class ProcessingCharacterDetailsState implements CharacterDetailsState {
  const ProcessingCharacterDetailsState({required this.sourceEvent, required this.details});
  

@override final  CharacterDetailsEvent? sourceEvent;
@override final  CharacterDetails? details;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessingCharacterDetailsStateCopyWith<ProcessingCharacterDetailsState> get copyWith => _$ProcessingCharacterDetailsStateCopyWithImpl<ProcessingCharacterDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessingCharacterDetailsState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,details);

@override
String toString() {
  return 'CharacterDetailsState._processing(sourceEvent: $sourceEvent, details: $details)';
}


}

/// @nodoc
abstract mixin class $ProcessingCharacterDetailsStateCopyWith<$Res> implements $CharacterDetailsStateCopyWith<$Res> {
  factory $ProcessingCharacterDetailsStateCopyWith(ProcessingCharacterDetailsState value, $Res Function(ProcessingCharacterDetailsState) _then) = _$ProcessingCharacterDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterDetailsEvent? sourceEvent, CharacterDetails? details
});


@override $CharacterDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$ProcessingCharacterDetailsStateCopyWithImpl<$Res>
    implements $ProcessingCharacterDetailsStateCopyWith<$Res> {
  _$ProcessingCharacterDetailsStateCopyWithImpl(this._self, this._then);

  final ProcessingCharacterDetailsState _self;
  final $Res Function(ProcessingCharacterDetailsState) _then;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? details = freezed,}) {
  return _then(ProcessingCharacterDetailsState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterDetailsEvent?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as CharacterDetails?,
  ));
}

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $CharacterDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class NotificationCharacterDetailsState implements CharacterDetailsState {
  const NotificationCharacterDetailsState({required this.sourceEvent, required this.details, required this.message});
  

@override final  CharacterDetailsEvent? sourceEvent;
@override final  CharacterDetails? details;
 final  DataProcessingMessage? message;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCharacterDetailsStateCopyWith<NotificationCharacterDetailsState> get copyWith => _$NotificationCharacterDetailsStateCopyWithImpl<NotificationCharacterDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationCharacterDetailsState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&(identical(other.details, details) || other.details == details)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,details,message);

@override
String toString() {
  return 'CharacterDetailsState._notification(sourceEvent: $sourceEvent, details: $details, message: $message)';
}


}

/// @nodoc
abstract mixin class $NotificationCharacterDetailsStateCopyWith<$Res> implements $CharacterDetailsStateCopyWith<$Res> {
  factory $NotificationCharacterDetailsStateCopyWith(NotificationCharacterDetailsState value, $Res Function(NotificationCharacterDetailsState) _then) = _$NotificationCharacterDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterDetailsEvent? sourceEvent, CharacterDetails? details, DataProcessingMessage? message
});


@override $CharacterDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$NotificationCharacterDetailsStateCopyWithImpl<$Res>
    implements $NotificationCharacterDetailsStateCopyWith<$Res> {
  _$NotificationCharacterDetailsStateCopyWithImpl(this._self, this._then);

  final NotificationCharacterDetailsState _self;
  final $Res Function(NotificationCharacterDetailsState) _then;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? details = freezed,Object? message = freezed,}) {
  return _then(NotificationCharacterDetailsState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterDetailsEvent?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as CharacterDetails?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as DataProcessingMessage?,
  ));
}

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $CharacterDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class ErrorCharacterDetailsState implements CharacterDetailsState {
  const ErrorCharacterDetailsState({required this.sourceEvent, required this.details, required this.exception});
  

@override final  CharacterDetailsEvent? sourceEvent;
@override final  CharacterDetails? details;
 final  Object exception;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCharacterDetailsStateCopyWith<ErrorCharacterDetailsState> get copyWith => _$ErrorCharacterDetailsStateCopyWithImpl<ErrorCharacterDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorCharacterDetailsState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,details,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'CharacterDetailsState._error(sourceEvent: $sourceEvent, details: $details, exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ErrorCharacterDetailsStateCopyWith<$Res> implements $CharacterDetailsStateCopyWith<$Res> {
  factory $ErrorCharacterDetailsStateCopyWith(ErrorCharacterDetailsState value, $Res Function(ErrorCharacterDetailsState) _then) = _$ErrorCharacterDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterDetailsEvent? sourceEvent, CharacterDetails? details, Object exception
});


@override $CharacterDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$ErrorCharacterDetailsStateCopyWithImpl<$Res>
    implements $ErrorCharacterDetailsStateCopyWith<$Res> {
  _$ErrorCharacterDetailsStateCopyWithImpl(this._self, this._then);

  final ErrorCharacterDetailsState _self;
  final $Res Function(ErrorCharacterDetailsState) _then;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? details = freezed,Object? exception = null,}) {
  return _then(ErrorCharacterDetailsState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterDetailsEvent?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as CharacterDetails?,exception: null == exception ? _self.exception : exception ,
  ));
}

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $CharacterDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on
