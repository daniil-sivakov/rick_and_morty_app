import 'package:rick_and_morty_app/domain/models/data_transfer/character_previews_chunk.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/load_characters_query.dart';

abstract interface class CharacterPreviewsRepository {
  Future<CharacterPreviewsChunk> fetch(LoadCharactersQuery query);

  Future<void> saveToLocalCache(CharacterPreviewsChunk chunk);

  Future<CharacterPreviewsChunk?> loadCachedChunk();
}
