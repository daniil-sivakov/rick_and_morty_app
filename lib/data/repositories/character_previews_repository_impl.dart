import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/data/api/custom_http_client.dart';
import 'package:rick_and_morty_app/data/constants/local_storage_keys.dart';
import 'package:rick_and_morty_app/data/mappers/character_preview_api_mapper.dart';
import 'package:rick_and_morty_app/data/mappers/character_preview_mapper.dart';
import 'package:rick_and_morty_app/data/models/character_previews_page/character_previews_page.dart';
import 'package:rick_and_morty_app/data/providers/local_storage_provider.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/character_previews_chunk.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/load_characters_query.dart';
import 'package:rick_and_morty_app/domain/repositories/character_previews_repository.dart';

class CharacterPreviewsRepositoryImpl implements CharacterPreviewsRepository {
  const CharacterPreviewsRepositoryImpl(
    this._httpClient,
    this._localStorageProvider,
  );

  final CustomHttpClient _httpClient;
  final LocalStorageProvider _localStorageProvider;

  @override
  Future<CharacterPreviewsChunk> fetch(LoadCharactersQuery query) async {
    final mapper = CharacterPreviewApiMapper();
    final request = mapper.asGraphQlRequest(query);
    final http.Response response = await _httpClient.send(request);
    final CharacterPreviewsPage page = mapper.asPage(response);

    final CharacterPreviewsChunk chunk = CharacterPreviewsChunk(
      data: CharacterPreviewMapper().toDomainModelList(page.results),
      page: query.page,
      nextPage: page.info.next,
    );

    return chunk;
  }

  @override
  Future<void> saveToLocalCache(CharacterPreviewsChunk chunk) async {
    await _localStorageProvider.set(
      key: LocalStorageKeys.characterPreviewsChunkKey,
      value: jsonEncode(chunk.toJson()),
    );
  }

  @override
  Future<CharacterPreviewsChunk?> loadCachedChunk() async {
    final String? jsonString = await _localStorageProvider.get(
      LocalStorageKeys.characterPreviewsChunkKey,
    );

    if (jsonString == null) return null;

    final chunk = CharacterPreviewsChunk.fromJson(jsonDecode(jsonString));

    return chunk;
  }
}
