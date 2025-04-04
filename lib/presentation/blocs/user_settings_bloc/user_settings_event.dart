part of 'user_settings_bloc.dart';

sealed class UserSettingsEvent {
  factory UserSettingsEvent.initialize() = _LoadData;

  factory UserSettingsEvent.toggleTheme() = _ToggleTheme;

  factory UserSettingsEvent.toggleApplicationMode() = _ToggleApplicationMode;
}

class _LoadData implements UserSettingsEvent {}

class _ToggleTheme implements UserSettingsEvent {}

class _ToggleApplicationMode implements UserSettingsEvent {}

class _SaveSettingsToStorage implements UserSettingsEvent {}
