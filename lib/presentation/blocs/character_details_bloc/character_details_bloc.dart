import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';
import 'package:rick_and_morty_app/domain/use_cases/load_character_details_use_case.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_state.dart';
import 'package:rick_and_morty_app/presentation/messages/data_processing_message.dart';

part 'character_details_event.dart';

class CharacterDetailsBloc
    extends Bloc<CharacterDetailsEvent, CharacterDetailsState> {
  CharacterDetailsBloc(this._characterId, this._loadCharacterDetails)
    : super(CharacterDetailsState.initial()) {
    on<_Reload>(_handleReload, transformer: droppable());
  }

  final String _characterId;
  final LoadCharactersDetails _loadCharacterDetails;

  Future<void> _handleReload(
    _Reload event,
    Emitter<CharacterDetailsState> emit,
  ) async {
    try {
      emit(event.processing(state));
      final details = await _loadCharacterDetails.execute(_characterId);
      emit(event.withData(state, details));
    } on DomainException catch (exception) {
      emit(event.error(state, exception));
      emit(
        event.notification(state, DataProcessingMessage.fromError(exception)),
      );
    } on Object catch (error) {
      emit(event.error(state, error));
      emit(event.notification(state, DataProcessingMessage.fromError(error)));
      rethrow;
    } finally {
      emit(event.idle(state));
    }
  }
}
