import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/domain/repositories/character_details_repository.dart';
import 'package:rick_and_morty_app/domain/repositories/character_previews_repository.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';
import 'package:rick_and_morty_app/domain/use_cases/load_character_details_use_case.dart';
import 'package:rick_and_morty_app/domain/use_cases/load_characters_page_use_case.dart';

class DomainDi {
  static void register(GetIt locator) {
    locator.registerSingleton<LoadCharactersPage>(
      LoadCharactersPage(
        locator.get<CharacterPreviewsRepository>(),
        locator.get<UserSettingsRepository>(),
      ),
    );

    locator.registerSingleton<LoadCharactersDetails>(
      LoadCharactersDetails(
        locator.get<CharacterDetailsRepository>(),
        locator.get<CharacterPreviewsRepository>(),
        locator.get<UserSettingsRepository>(),
      ),
    );
  }
}
