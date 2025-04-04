import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/data/mappers/character_details_mapper.dart';
import 'package:rick_and_morty_app/data/mappers/graph_ql_mapper.dart';
import 'package:rick_and_morty_app/data/models/character_details_data/character_details_data.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';

class CharacterDetailsApiMapper with GraphQlMapper {
  http.BaseRequest asGraphQlRequest(String characterId) {
    final http.Request request = buildGraphQlRequestBase();

    final String characterPreviewQuery = '''
query {
  character(id: $characterId) {
    id
    name
    image
    status
    species
    gender
    origin {
      name
    }
    location {
      name
    }
    episode {
      name
      episode
    }
  }
}
''';

    request.body = buildQueryBody(characterPreviewQuery);

    return request;
  }

  CharacterDetails asDetails(http.Response response) {
    final Map<String, Object?> json = extractQueryData(response, 'character');

    final CharacterDetailsData data = CharacterDetailsData.fromJson(json);

    return CharacterDetailsMapper().toDomainModel(data);
  }
}
