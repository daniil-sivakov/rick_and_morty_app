sealed class DomainException implements Exception {}

class NoDataInCacheException implements DomainException {}

class DataNotFoundException implements DomainException {}

class ServerUnavailableException implements DomainException {}

class NetworkConnectionProblemsException implements DomainException {}

class DataFiltersNotAvailableInOfflineModeException
    implements DomainException {}
