import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/core/logging/logger.dart';
import 'package:rick_and_morty_app/core/logging/talker_logger.dart';

class CoreDi {
  static register(GetIt locator) {
    locator.registerSingleton<Logger>(TalkerLogger());
  }
}
