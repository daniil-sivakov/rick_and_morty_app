import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/data/constants/api_paths.dart';

mixin GraphQlMapper {
  http.Request buildGraphQlRequestBase() {
    final request = http.Request('POST', Uri.parse(ApiPaths.apiGraphQlUrl));

    request.headers['Content-Type'] = 'application/json';

    return request;
  }

  String buildQueryBody(String query) {
    return jsonEncode({'query': query});
  }

  Map<String, Object?> extractQueryData(http.Response response, String key) {
    final responseBody = jsonDecode(response.body);
    final data = responseBody['data'][key];

    return data;
  }
}
