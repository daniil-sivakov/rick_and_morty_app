import 'dart:async';
import 'dart:convert';

import 'package:rick_and_morty_app/data/constants/local_storage_keys.dart';
import 'package:rick_and_morty_app/data/providers/local_storage_provider.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';

class UserSettingsRepositoryImpl implements UserSettingsRepository {
  const UserSettingsRepositoryImpl(
    this._streamController,
    this._localStorageProvider,
  );

  final StreamController<UserSettings> _streamController;
  final LocalStorageProvider _localStorageProvider;

  @override
  Stream<UserSettings> get changes => _streamController.stream;

  @override
  Future<UserSettings> load() async {
    final String? jsonString = await _localStorageProvider.get(
      LocalStorageKeys.userSettings,
    );

    if (jsonString == null) return UserSettings.fallback();

    return UserSettings.fromJson(jsonDecode(jsonString));
  }

  @override
  Future<void> save(UserSettings settings) {
    _streamController.add(settings);

    return _localStorageProvider.set(
      key: LocalStorageKeys.userSettings,
      value: jsonEncode(settings.toJson()),
    );
  }
}
