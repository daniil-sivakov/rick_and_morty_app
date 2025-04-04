part of 'character_details_bloc.dart';

sealed class CharacterDetailsEvent {
  factory CharacterDetailsEvent.reload() = _Reload;
}

class _Reload implements CharacterDetailsEvent {}
