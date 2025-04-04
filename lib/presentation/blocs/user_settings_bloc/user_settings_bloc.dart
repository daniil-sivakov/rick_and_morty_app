import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';
import 'package:rick_and_morty_app/presentation/blocs/utilities.dart';

part 'user_settings_event.dart';

class UserSettingsBloc extends Bloc<UserSettingsEvent, UserSettings> {
  UserSettingsBloc(this._userSettingsRepository)
    : super(UserSettings.fallback()) {
    on<_LoadData>(_loadData);
    on<_ToggleTheme>(_toggleTheme);
    on<_ToggleApplicationMode>(_toggleApplicationMode);
    on<_SaveSettingsToStorage>(
      _saveSettingsToStorage,
      transformer: debounce(const Duration(seconds: 1)),
    );
  }

  final UserSettingsRepository _userSettingsRepository;

  Future<void> _loadData(_LoadData _, Emitter<UserSettings> emit) async {
    final UserSettings settings = await _userSettingsRepository.load();

    emit(settings);
  }

  void _toggleTheme(_ToggleTheme _, Emitter<UserSettings> emit) {
    final UserSettings newSettings = state.nextTheme();

    emit(newSettings);

    add(_SaveSettingsToStorage());
  }

  void _toggleApplicationMode(
    _ToggleApplicationMode _,
    Emitter<UserSettings> emit,
  ) {
    final UserSettings newSettings = state.copyWith(
      applicationMode: switch (state.applicationMode) {
        ApplicationMode.offline => ApplicationMode.online,
        ApplicationMode.online => ApplicationMode.offline,
      },
    );

    emit(newSettings);

    _userSettingsRepository.save(newSettings);
  }

  void _saveSettingsToStorage(
    _SaveSettingsToStorage _,
    Emitter<UserSettings> emit,
  ) {
    _userSettingsRepository.save(state);
  }
}
