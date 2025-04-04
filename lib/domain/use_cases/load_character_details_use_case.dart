import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';
import 'package:rick_and_morty_app/domain/repositories/character_details_repository.dart';
import 'package:rick_and_morty_app/domain/repositories/character_previews_repository.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';

class LoadCharactersDetails {
  const LoadCharactersDetails(
    this._detailsRepository,
    this._previewsRepository,
    this._settingsRepository,
  );

  final CharacterDetailsRepository _detailsRepository;
  final CharacterPreviewsRepository _previewsRepository;
  final UserSettingsRepository _settingsRepository;

  Future<CharacterDetails> execute(String characterId) async {
    final ApplicationMode mode = await _settingsRepository.load().then(
      (settings) => settings.applicationMode,
    );

    if (mode == ApplicationMode.online) {
      final CharacterDetails details = await _detailsRepository.fetch(
        characterId,
      );

      return details;
    }

    if (mode == ApplicationMode.offline) {
      final chunk = await _previewsRepository.loadCachedChunk();

      for (final CharacterPreview preview in chunk?.data ?? []) {
        if (preview.id == characterId) {
          return CharacterDetails.fromPreview(preview);
        }
      }

      throw NoDataInCacheException();
    }

    throw StateError('Unexpected mode: $mode');
  }
}
