import 'package:http/http.dart' as http;

abstract class CustomHttpClient {
  Future<http.Response> send(http.BaseRequest request);
}
