import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/core/logging/logger.dart';
import 'package:rick_and_morty_app/data/api/custom_http_client.dart';
import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';

class CustomHttpClientImpl implements CustomHttpClient {
  CustomHttpClientImpl(this._logger) : _inner = http.Client();

  final http.Client _inner;
  final Logger _logger;

  @override
  Future<http.Response> send(http.BaseRequest request) async {
    try {
      _logger.log('${request.method} sent \n${request.url}');

      final response = await _inner
          .send(request)
          .timeout(const Duration(seconds: 10));

      _logger.log(
        '${response.request?.method}: ${response.statusCode}\n${response.request?.url}',
      );

      final http.Response fullResponse = await http.Response.fromStream(
        response,
      );

      if (response.statusCode ~/ 100 == 4) {
        throw DataNotFoundException();
      }

      if (response.statusCode ~/ 100 == 5) {
        throw ServerUnavailableException();
      }

      return fullResponse;
    } on TimeoutException catch (exception) {
      _logger.log(exception);
      throw NetworkConnectionProblemsException();
    } on http.ClientException catch (exception) {
      _logger.log(exception);
      throw NetworkConnectionProblemsException();
    } on Object catch (exception) {
      _logger.log(exception);
      rethrow;
    }
  }
}
