import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';
import 'package:rick_and_morty_app/presentation/messages/data_processing_message.dart';

part 'character_details_state.freezed.dart';

@freezed
abstract class CharacterDetailsState with _$CharacterDetailsState {
  static CharacterDetailsState initial() =>
      CharacterDetailsState._idle(sourceEvent: null, details: null);

  const factory CharacterDetailsState._idle({
    required CharacterDetailsEvent? sourceEvent,
    required CharacterDetails? details,
  }) = IdleCharacterDetailsState;

  const factory CharacterDetailsState._processing({
    required CharacterDetailsEvent? sourceEvent,
    required CharacterDetails? details,
  }) = ProcessingCharacterDetailsState;

  const factory CharacterDetailsState._notification({
    required CharacterDetailsEvent? sourceEvent,
    required CharacterDetails? details,
    required DataProcessingMessage? message,
  }) = NotificationCharacterDetailsState;

  const factory CharacterDetailsState._error({
    required CharacterDetailsEvent? sourceEvent,
    required CharacterDetails? details,
    required Object exception,
  }) = ErrorCharacterDetailsState;
}

extension AvailableStatesExtension on CharacterDetailsEvent {
  CharacterDetailsState idle(CharacterDetailsState state) {
    return CharacterDetailsState._idle(
      sourceEvent: this,
      details: state.details,
    );
  }

  CharacterDetailsState withData(
    CharacterDetailsState state,
    CharacterDetails details,
  ) {
    return CharacterDetailsState._idle(sourceEvent: this, details: details);
  }

  CharacterDetailsState processing(CharacterDetailsState state) {
    return CharacterDetailsState._processing(
      sourceEvent: this,
      details: state.details,
    );
  }

  CharacterDetailsState error(CharacterDetailsState state, Object exception) {
    return CharacterDetailsState._error(
      sourceEvent: this,
      details: state.details,
      exception: exception,
    );
  }

  CharacterDetailsState notification(
    CharacterDetailsState state,
    DataProcessingMessage? message,
  ) {
    return CharacterDetailsState._notification(
      sourceEvent: this,
      details: state.details,
      message: message,
    );
  }
}
