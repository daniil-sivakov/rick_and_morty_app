import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';
import 'package:rick_and_morty_app/domain/models/application/data_source.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/character_previews_chunk.dart';
import 'package:rick_and_morty_app/domain/repositories/character_previews_repository.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/character_previews_page.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/load_characters_query.dart';

class LoadCharactersPage {
  const LoadCharactersPage(this._previewRepository, this._settingsRepository);

  final CharacterPreviewsRepository _previewRepository;
  final UserSettingsRepository _settingsRepository;

  Future<CharacterPreviewsPage> execute(LoadCharactersQuery query) async {
    final ApplicationMode mode = await _settingsRepository.load().then(
      (settings) => settings.applicationMode,
    );

    if (mode == ApplicationMode.online) {
      final CharacterPreviewsChunk chunk = await _previewRepository.fetch(
        query,
      );

      _previewRepository.saveToLocalCache(chunk);

      return CharacterPreviewsPage(
        data: chunk.data,
        dataSource: DataSource.network,
        page: chunk.page,
        nextPage: chunk.nextPage,
      );
    }

    if (mode == ApplicationMode.offline) {
      if (query.filter.isNotEmpty) {
        throw DataFiltersNotAvailableInOfflineModeException();
      }
      final chunk = await _previewRepository.loadCachedChunk();

      if (chunk == null) throw NoDataInCacheException();

      return CharacterPreviewsPage(
        data: chunk.data,
        dataSource: DataSource.localCache,
        page: chunk.page,
        nextPage: null,
      );
    }

    throw StateError('Unexpected mode: $mode');
  }
}
