// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_preview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterPreviewState {

 CharacterPreviewEvent? get sourceEvent; List<CharacterPreview> get data; CharacterFilter get filter; int? get nextPage;
/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterPreviewStateCopyWith<CharacterPreviewState> get copyWith => _$CharacterPreviewStateCopyWithImpl<CharacterPreviewState>(this as CharacterPreviewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterPreviewState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,const DeepCollectionEquality().hash(data),filter,nextPage);

@override
String toString() {
  return 'CharacterPreviewState(sourceEvent: $sourceEvent, data: $data, filter: $filter, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class $CharacterPreviewStateCopyWith<$Res>  {
  factory $CharacterPreviewStateCopyWith(CharacterPreviewState value, $Res Function(CharacterPreviewState) _then) = _$CharacterPreviewStateCopyWithImpl;
@useResult
$Res call({
 CharacterPreviewEvent? sourceEvent, List<CharacterPreview> data, CharacterFilter filter, int? nextPage
});


$CharacterFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$CharacterPreviewStateCopyWithImpl<$Res>
    implements $CharacterPreviewStateCopyWith<$Res> {
  _$CharacterPreviewStateCopyWithImpl(this._self, this._then);

  final CharacterPreviewState _self;
  final $Res Function(CharacterPreviewState) _then;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sourceEvent = freezed,Object? data = null,Object? filter = null,Object? nextPage = freezed,}) {
  return _then(_self.copyWith(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterPreviewEvent?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CharacterFilter,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<$Res> get filter {
  
  return $CharacterFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}


/// @nodoc


class IdleCharacterPreviewState extends CharacterPreviewState {
  const IdleCharacterPreviewState({required this.sourceEvent, required final  List<CharacterPreview> data, required this.filter, required this.nextPage}): _data = data,super._();
  

@override final  CharacterPreviewEvent? sourceEvent;
 final  List<CharacterPreview> _data;
@override List<CharacterPreview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CharacterFilter filter;
@override final  int? nextPage;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdleCharacterPreviewStateCopyWith<IdleCharacterPreviewState> get copyWith => _$IdleCharacterPreviewStateCopyWithImpl<IdleCharacterPreviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdleCharacterPreviewState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,const DeepCollectionEquality().hash(_data),filter,nextPage);

@override
String toString() {
  return 'CharacterPreviewState._idle(sourceEvent: $sourceEvent, data: $data, filter: $filter, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class $IdleCharacterPreviewStateCopyWith<$Res> implements $CharacterPreviewStateCopyWith<$Res> {
  factory $IdleCharacterPreviewStateCopyWith(IdleCharacterPreviewState value, $Res Function(IdleCharacterPreviewState) _then) = _$IdleCharacterPreviewStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterPreviewEvent? sourceEvent, List<CharacterPreview> data, CharacterFilter filter, int? nextPage
});


@override $CharacterFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$IdleCharacterPreviewStateCopyWithImpl<$Res>
    implements $IdleCharacterPreviewStateCopyWith<$Res> {
  _$IdleCharacterPreviewStateCopyWithImpl(this._self, this._then);

  final IdleCharacterPreviewState _self;
  final $Res Function(IdleCharacterPreviewState) _then;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? data = null,Object? filter = null,Object? nextPage = freezed,}) {
  return _then(IdleCharacterPreviewState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterPreviewEvent?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CharacterFilter,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<$Res> get filter {
  
  return $CharacterFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc


class NextPageLoadingCharacterPreviewState extends CharacterPreviewState {
  const NextPageLoadingCharacterPreviewState({required this.sourceEvent, required final  List<CharacterPreview> data, required this.filter, required this.nextPage}): _data = data,super._();
  

@override final  CharacterPreviewEvent? sourceEvent;
 final  List<CharacterPreview> _data;
@override List<CharacterPreview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CharacterFilter filter;
@override final  int? nextPage;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NextPageLoadingCharacterPreviewStateCopyWith<NextPageLoadingCharacterPreviewState> get copyWith => _$NextPageLoadingCharacterPreviewStateCopyWithImpl<NextPageLoadingCharacterPreviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextPageLoadingCharacterPreviewState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,const DeepCollectionEquality().hash(_data),filter,nextPage);

@override
String toString() {
  return 'CharacterPreviewState._nextPageLoading(sourceEvent: $sourceEvent, data: $data, filter: $filter, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class $NextPageLoadingCharacterPreviewStateCopyWith<$Res> implements $CharacterPreviewStateCopyWith<$Res> {
  factory $NextPageLoadingCharacterPreviewStateCopyWith(NextPageLoadingCharacterPreviewState value, $Res Function(NextPageLoadingCharacterPreviewState) _then) = _$NextPageLoadingCharacterPreviewStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterPreviewEvent? sourceEvent, List<CharacterPreview> data, CharacterFilter filter, int? nextPage
});


@override $CharacterFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$NextPageLoadingCharacterPreviewStateCopyWithImpl<$Res>
    implements $NextPageLoadingCharacterPreviewStateCopyWith<$Res> {
  _$NextPageLoadingCharacterPreviewStateCopyWithImpl(this._self, this._then);

  final NextPageLoadingCharacterPreviewState _self;
  final $Res Function(NextPageLoadingCharacterPreviewState) _then;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? data = null,Object? filter = null,Object? nextPage = freezed,}) {
  return _then(NextPageLoadingCharacterPreviewState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterPreviewEvent?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CharacterFilter,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<$Res> get filter {
  
  return $CharacterFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc


class FullReloadCharacterPreviewState extends CharacterPreviewState {
  const FullReloadCharacterPreviewState({required this.sourceEvent, required final  List<CharacterPreview> data, required this.filter, required this.nextPage}): _data = data,super._();
  

@override final  CharacterPreviewEvent? sourceEvent;
 final  List<CharacterPreview> _data;
@override List<CharacterPreview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CharacterFilter filter;
@override final  int? nextPage;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullReloadCharacterPreviewStateCopyWith<FullReloadCharacterPreviewState> get copyWith => _$FullReloadCharacterPreviewStateCopyWithImpl<FullReloadCharacterPreviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullReloadCharacterPreviewState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,const DeepCollectionEquality().hash(_data),filter,nextPage);

@override
String toString() {
  return 'CharacterPreviewState._fullReload(sourceEvent: $sourceEvent, data: $data, filter: $filter, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class $FullReloadCharacterPreviewStateCopyWith<$Res> implements $CharacterPreviewStateCopyWith<$Res> {
  factory $FullReloadCharacterPreviewStateCopyWith(FullReloadCharacterPreviewState value, $Res Function(FullReloadCharacterPreviewState) _then) = _$FullReloadCharacterPreviewStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterPreviewEvent? sourceEvent, List<CharacterPreview> data, CharacterFilter filter, int? nextPage
});


@override $CharacterFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$FullReloadCharacterPreviewStateCopyWithImpl<$Res>
    implements $FullReloadCharacterPreviewStateCopyWith<$Res> {
  _$FullReloadCharacterPreviewStateCopyWithImpl(this._self, this._then);

  final FullReloadCharacterPreviewState _self;
  final $Res Function(FullReloadCharacterPreviewState) _then;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? data = null,Object? filter = null,Object? nextPage = freezed,}) {
  return _then(FullReloadCharacterPreviewState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterPreviewEvent?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CharacterFilter,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<$Res> get filter {
  
  return $CharacterFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc


class FullReloadCompletedCharacterPreviewState extends CharacterPreviewState {
  const FullReloadCompletedCharacterPreviewState({required this.sourceEvent, required final  List<CharacterPreview> data, required this.filter, required this.nextPage}): _data = data,super._();
  

@override final  CharacterPreviewEvent? sourceEvent;
 final  List<CharacterPreview> _data;
@override List<CharacterPreview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CharacterFilter filter;
@override final  int? nextPage;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullReloadCompletedCharacterPreviewStateCopyWith<FullReloadCompletedCharacterPreviewState> get copyWith => _$FullReloadCompletedCharacterPreviewStateCopyWithImpl<FullReloadCompletedCharacterPreviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullReloadCompletedCharacterPreviewState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,const DeepCollectionEquality().hash(_data),filter,nextPage);

@override
String toString() {
  return 'CharacterPreviewState._fullReloadCompleted(sourceEvent: $sourceEvent, data: $data, filter: $filter, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class $FullReloadCompletedCharacterPreviewStateCopyWith<$Res> implements $CharacterPreviewStateCopyWith<$Res> {
  factory $FullReloadCompletedCharacterPreviewStateCopyWith(FullReloadCompletedCharacterPreviewState value, $Res Function(FullReloadCompletedCharacterPreviewState) _then) = _$FullReloadCompletedCharacterPreviewStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterPreviewEvent? sourceEvent, List<CharacterPreview> data, CharacterFilter filter, int? nextPage
});


@override $CharacterFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$FullReloadCompletedCharacterPreviewStateCopyWithImpl<$Res>
    implements $FullReloadCompletedCharacterPreviewStateCopyWith<$Res> {
  _$FullReloadCompletedCharacterPreviewStateCopyWithImpl(this._self, this._then);

  final FullReloadCompletedCharacterPreviewState _self;
  final $Res Function(FullReloadCompletedCharacterPreviewState) _then;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? data = null,Object? filter = null,Object? nextPage = freezed,}) {
  return _then(FullReloadCompletedCharacterPreviewState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterPreviewEvent?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CharacterFilter,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<$Res> get filter {
  
  return $CharacterFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc


class ErrorCharacterPreviewState extends CharacterPreviewState {
  const ErrorCharacterPreviewState({required this.sourceEvent, required final  List<CharacterPreview> data, required this.filter, required this.nextPage, required this.error}): _data = data,super._();
  

@override final  CharacterPreviewEvent? sourceEvent;
 final  List<CharacterPreview> _data;
@override List<CharacterPreview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CharacterFilter filter;
@override final  int? nextPage;
 final  Object error;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCharacterPreviewStateCopyWith<ErrorCharacterPreviewState> get copyWith => _$ErrorCharacterPreviewStateCopyWithImpl<ErrorCharacterPreviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorCharacterPreviewState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,const DeepCollectionEquality().hash(_data),filter,nextPage,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'CharacterPreviewState._error(sourceEvent: $sourceEvent, data: $data, filter: $filter, nextPage: $nextPage, error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCharacterPreviewStateCopyWith<$Res> implements $CharacterPreviewStateCopyWith<$Res> {
  factory $ErrorCharacterPreviewStateCopyWith(ErrorCharacterPreviewState value, $Res Function(ErrorCharacterPreviewState) _then) = _$ErrorCharacterPreviewStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterPreviewEvent? sourceEvent, List<CharacterPreview> data, CharacterFilter filter, int? nextPage, Object error
});


@override $CharacterFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$ErrorCharacterPreviewStateCopyWithImpl<$Res>
    implements $ErrorCharacterPreviewStateCopyWith<$Res> {
  _$ErrorCharacterPreviewStateCopyWithImpl(this._self, this._then);

  final ErrorCharacterPreviewState _self;
  final $Res Function(ErrorCharacterPreviewState) _then;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? data = null,Object? filter = null,Object? nextPage = freezed,Object? error = null,}) {
  return _then(ErrorCharacterPreviewState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterPreviewEvent?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CharacterFilter,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,error: null == error ? _self.error : error ,
  ));
}

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<$Res> get filter {
  
  return $CharacterFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc


class NotificationCharacterPreviewState extends CharacterPreviewState {
  const NotificationCharacterPreviewState({required this.sourceEvent, required final  List<CharacterPreview> data, required this.filter, required this.nextPage, required this.message}): _data = data,super._();
  

@override final  CharacterPreviewEvent? sourceEvent;
 final  List<CharacterPreview> _data;
@override List<CharacterPreview> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CharacterFilter filter;
@override final  int? nextPage;
 final  DataProcessingMessage? message;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCharacterPreviewStateCopyWith<NotificationCharacterPreviewState> get copyWith => _$NotificationCharacterPreviewStateCopyWithImpl<NotificationCharacterPreviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationCharacterPreviewState&&(identical(other.sourceEvent, sourceEvent) || other.sourceEvent == sourceEvent)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,sourceEvent,const DeepCollectionEquality().hash(_data),filter,nextPage,message);

@override
String toString() {
  return 'CharacterPreviewState._notification(sourceEvent: $sourceEvent, data: $data, filter: $filter, nextPage: $nextPage, message: $message)';
}


}

/// @nodoc
abstract mixin class $NotificationCharacterPreviewStateCopyWith<$Res> implements $CharacterPreviewStateCopyWith<$Res> {
  factory $NotificationCharacterPreviewStateCopyWith(NotificationCharacterPreviewState value, $Res Function(NotificationCharacterPreviewState) _then) = _$NotificationCharacterPreviewStateCopyWithImpl;
@override @useResult
$Res call({
 CharacterPreviewEvent? sourceEvent, List<CharacterPreview> data, CharacterFilter filter, int? nextPage, DataProcessingMessage? message
});


@override $CharacterFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$NotificationCharacterPreviewStateCopyWithImpl<$Res>
    implements $NotificationCharacterPreviewStateCopyWith<$Res> {
  _$NotificationCharacterPreviewStateCopyWithImpl(this._self, this._then);

  final NotificationCharacterPreviewState _self;
  final $Res Function(NotificationCharacterPreviewState) _then;

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceEvent = freezed,Object? data = null,Object? filter = null,Object? nextPage = freezed,Object? message = freezed,}) {
  return _then(NotificationCharacterPreviewState(
sourceEvent: freezed == sourceEvent ? _self.sourceEvent : sourceEvent // ignore: cast_nullable_to_non_nullable
as CharacterPreviewEvent?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CharacterPreview>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CharacterFilter,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as DataProcessingMessage?,
  ));
}

/// Create a copy of CharacterPreviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterFilterCopyWith<$Res> get filter {
  
  return $CharacterFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

// dart format on
