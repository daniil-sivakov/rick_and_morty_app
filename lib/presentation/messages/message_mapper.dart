import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';
import 'package:rick_and_morty_app/presentation/messages/data_processing_message.dart';

class MessageMapper {
  String localize(DataProcessingMessage message) {
    final String localizedMessage = switch (message) {
      DataProcessingMessage.dataFetched =>
        LocalizationPlug.dataFetchedFromNetworkMessage,
      DataProcessingMessage.dataUsedFromCache =>
        LocalizationPlug.dataUsedFromCacheMessage,
      DataProcessingMessage.dataNotFound =>
        LocalizationPlug.dataNotFoundMessage,
      DataProcessingMessage.serverUnavailable =>
        LocalizationPlug.serverUnavailableMessage,
      DataProcessingMessage.noDataInCache =>
        LocalizationPlug.noDataInCacheMessage,
      DataProcessingMessage.dataFiltersNotAvailableInOfflineMode =>
        LocalizationPlug.filteringNotAvailableInOfflineModeMessage,
      DataProcessingMessage.unknownError =>
        LocalizationPlug.unknownErrorMessage,
    };

    return localizedMessage;
  }
}
