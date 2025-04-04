import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/data/api/custom_http_client.dart';
import 'package:rick_and_morty_app/data/mappers/character_details_api_mapper.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';
import 'package:rick_and_morty_app/domain/repositories/character_details_repository.dart';

class CharacterDetailsRepositoryImpl implements CharacterDetailsRepository {
  const CharacterDetailsRepositoryImpl(this._httpClient);

  final CustomHttpClient _httpClient;

  @override
  Future<CharacterDetails> fetch(String characterId) async {
    final mapper = CharacterDetailsApiMapper();
    final request = mapper.asGraphQlRequest(characterId);
    final http.Response response = await _httpClient.send(request);
    final CharacterDetails details = mapper.asDetails(response);

    return details;
  }
}
