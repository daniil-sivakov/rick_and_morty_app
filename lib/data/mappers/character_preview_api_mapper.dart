import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/data/mappers/character_filter_mapper.dart';
import 'package:rick_and_morty_app/data/mappers/graph_ql_mapper.dart';
import 'package:rick_and_morty_app/data/models/character_previews_page/character_previews_page.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/load_characters_query.dart';

class CharacterPreviewApiMapper with GraphQlMapper {
  http.BaseRequest asGraphQlRequest(LoadCharactersQuery query) {
    final http.Request request = buildGraphQlRequestBase();

    final int page = query.page;
    final (status, species) = CharacterFilterMapper().splitIntoJsonKeys(
      query.filter,
    );

    final String characterPreviewQuery = '''
query {
  characters(
    page: $page,
    filter: {species: $species, status: $status}
  ) {
    info {
      next
    }
    results {
      id
      name
      image
      status
      species
      location {
        name
      }
      episode {
        name
        episode
      }
    }
  }
}
''';

    request.body = buildQueryBody(characterPreviewQuery);

    return request;
  }

  CharacterPreviewsPage asPage(http.Response response) {
    final Map<String, Object?> json = extractQueryData(response, 'characters');

    final CharacterPreviewsPage page = CharacterPreviewsPage.fromJson(json);

    return page;
  }
}
