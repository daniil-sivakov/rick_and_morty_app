import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/core/di/core_di.dart';
import 'package:rick_and_morty_app/core/logging/logger.dart';
import 'package:rick_and_morty_app/data/di/data_di.dart';
import 'package:rick_and_morty_app/domain/di/domain_di.dart';
import 'package:rick_and_morty_app/presentation/app.dart';

void main() {
  final GetIt getIt = GetIt.instance;

  try {
    CoreDi.register(getIt);
    DataDi.register(getIt);
    DomainDi.register(getIt);
  } on Object {
    runApp(Center(child: FlutterLogo()));
    rethrow;
  }

  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();

      SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.portraitUp,
      ]);
      runApp(const App());
    },
    (error, stackTrace) {
      GetIt.instance.get<Logger>().handleError(error, stackTrace);
    },
  );
}
