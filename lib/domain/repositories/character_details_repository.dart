import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';

abstract interface class CharacterDetailsRepository {
  Future<CharacterDetails> fetch(String characterId);
}
