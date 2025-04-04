import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/core/logging/logger.dart';
import 'package:rick_and_morty_app/data/api/custom_http_client.dart';
import 'package:rick_and_morty_app/data/api/custom_http_client_impl.dart';
import 'package:rick_and_morty_app/data/providers/local_storage_provider.dart';
import 'package:rick_and_morty_app/data/providers/shared_preferences_storage_provider.dart';
import 'package:rick_and_morty_app/data/repositories/character_details_repository_impl.dart';
import 'package:rick_and_morty_app/data/repositories/character_previews_repository_impl.dart';
import 'package:rick_and_morty_app/data/repositories/user_settings_repository_impl.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/domain/repositories/character_details_repository.dart';
import 'package:rick_and_morty_app/domain/repositories/character_previews_repository.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';

class DataDi {
  static void register(GetIt locator) {
    locator.registerSingleton<CustomHttpClient>(
      CustomHttpClientImpl(locator.get<Logger>()),
    );

    locator.registerSingleton<LocalStorageProvider>(
      SharedPreferencesStorageProvider(),
    );

    final StreamController<UserSettings> userSettingsController =
        StreamController.broadcast();

    locator.registerSingleton<UserSettingsRepository>(
      UserSettingsRepositoryImpl(
        userSettingsController,
        locator.get<LocalStorageProvider>(),
      ),
      dispose: (_) => userSettingsController.close(),
    );

    locator.registerSingleton<CharacterPreviewsRepository>(
      CharacterPreviewsRepositoryImpl(
        locator.get<CustomHttpClient>(),
        locator.get<LocalStorageProvider>(),
      ),
    );

    locator.registerSingleton<CharacterDetailsRepository>(
      CharacterDetailsRepositoryImpl(locator.get<CustomHttpClient>()),
    );
  }
}
