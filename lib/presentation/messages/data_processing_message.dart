import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';

enum DataProcessingMessage {
  dataUsedFromCache,
  dataFetched,
  dataNotFound,
  serverUnavailable,
  noDataInCache,
  dataFiltersNotAvailableInOfflineMode,
  unknownError;

  static DataProcessingMessage? fromError(Object error) {
    return switch (error) {
      ServerUnavailableException() => serverUnavailable,
      DataNotFoundException() => dataNotFound,
      NetworkConnectionProblemsException() => null,
      NoDataInCacheException() => noDataInCache,
      DataFiltersNotAvailableInOfflineModeException() =>
        dataFiltersNotAvailableInOfflineMode,
      _ => unknownError,
    };
  }
}
