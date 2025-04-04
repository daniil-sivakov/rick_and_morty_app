import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';
import 'package:rick_and_morty_app/domain/models/filtering/character_filter.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_bloc.dart';
import 'package:rick_and_morty_app/presentation/messages/data_processing_message.dart';

part 'character_preview_state.freezed.dart';

@freezed
sealed class CharacterPreviewState with _$CharacterPreviewState {
  const CharacterPreviewState._();

  static CharacterPreviewState initial() => CharacterPreviewState._idle(
    sourceEvent: null,
    data: [],
    filter: CharacterFilter.empty(),
    nextPage: 1,
  );

  const factory CharacterPreviewState._idle({
    required CharacterPreviewEvent? sourceEvent,
    required List<CharacterPreview> data,
    required CharacterFilter filter,
    required int? nextPage,
  }) = IdleCharacterPreviewState;

  const factory CharacterPreviewState._nextPageLoading({
    required CharacterPreviewEvent? sourceEvent,
    required List<CharacterPreview> data,
    required CharacterFilter filter,
    required int? nextPage,
  }) = NextPageLoadingCharacterPreviewState;

  const factory CharacterPreviewState._fullReload({
    required CharacterPreviewEvent? sourceEvent,
    required List<CharacterPreview> data,
    required CharacterFilter filter,
    required int? nextPage,
  }) = FullReloadCharacterPreviewState;

  const factory CharacterPreviewState._fullReloadCompleted({
    required CharacterPreviewEvent? sourceEvent,
    required List<CharacterPreview> data,
    required CharacterFilter filter,
    required int? nextPage,
  }) = FullReloadCompletedCharacterPreviewState;

  const factory CharacterPreviewState._error({
    required CharacterPreviewEvent? sourceEvent,
    required List<CharacterPreview> data,
    required CharacterFilter filter,
    required int? nextPage,
    required Object error,
  }) = ErrorCharacterPreviewState;

  const factory CharacterPreviewState._notification({
    required CharacterPreviewEvent? sourceEvent,
    required List<CharacterPreview> data,
    required CharacterFilter filter,
    required int? nextPage,
    required DataProcessingMessage? message,
  }) = NotificationCharacterPreviewState;

  bool get endOfListReached => nextPage == null;
}

extension AvailableStatesExtension on CharacterPreviewEvent {
  CharacterPreviewState idle(CharacterPreviewState state) {
    return CharacterPreviewState._idle(
      sourceEvent: this,
      data: state.data,
      filter: state.filter,
      nextPage: state.nextPage,
    );
  }

  CharacterPreviewState appendData(
    CharacterPreviewState state,
    List<CharacterPreview> data,
    int? nextPage,
  ) {
    return state.copyWith(
      sourceEvent: this,
      data: [...state.data, ...data],
      nextPage: nextPage,
    );
  }

  CharacterPreviewState overwriteData(
    CharacterPreviewState state,
    List<CharacterPreview> data,
    int? nextPage,
  ) {
    return state.copyWith(sourceEvent: this, data: data, nextPage: nextPage);
  }

  CharacterPreviewState fullReload(CharacterPreviewState state) {
    return CharacterPreviewState._fullReload(
      sourceEvent: this,
      data: state.data,
      filter: state.filter,
      nextPage: state.nextPage,
    );
  }

  CharacterPreviewState fullReloadCompleted(CharacterPreviewState state) {
    return CharacterPreviewState._fullReloadCompleted(
      sourceEvent: this,
      data: state.data,
      filter: state.filter,
      nextPage: state.nextPage,
    );
  }

  CharacterPreviewState nextPageLoading(CharacterPreviewState state) {
    return CharacterPreviewState._nextPageLoading(
      sourceEvent: this,
      data: state.data,
      filter: state.filter,
      nextPage: state.nextPage,
    );
  }

  CharacterPreviewState error(CharacterPreviewState state, Object error) {
    return CharacterPreviewState._error(
      sourceEvent: this,
      data: state.data,
      filter: state.filter,
      nextPage: state.nextPage,
      error: error,
    );
  }

  CharacterPreviewState notification(
    CharacterPreviewState state,
    DataProcessingMessage? message,
  ) {
    return CharacterPreviewState._notification(
      sourceEvent: this,
      nextPage: state.nextPage,
      data: state.data,
      filter: state.filter,
      message: message,
    );
  }

  CharacterPreviewState newFilter(
    CharacterPreviewState state,
    CharacterFilter filter,
  ) {
    return state.copyWith(sourceEvent: this, filter: filter);
  }
}
