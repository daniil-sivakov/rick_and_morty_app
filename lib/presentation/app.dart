import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';
import 'package:rick_and_morty_app/domain/use_cases/load_characters_page_use_case.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/user_settings_bloc/user_settings_bloc.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';
import 'package:rick_and_morty_app/presentation/navigation/app_router.dart';
import 'package:rick_and_morty_app/presentation/widgets/theme_data_builder.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserSettingsBloc>(
          create: (_) {
            return UserSettingsBloc(GetIt.I.get<UserSettingsRepository>())
              ..add(UserSettingsEvent.initialize());
          },
        ),
        BlocProvider<CharacterPreviewBloc>(
          create: (_) {
            return CharacterPreviewBloc(
              GetIt.instance.get<LoadCharactersPage>(),
              GetIt.instance.get<UserSettingsRepository>(),
            );
          },
        ),
      ],
      child: ThemeDataBuilder(
        builder: (themeData) {
          return MaterialApp.router(
            title: LocalizationPlug.appTitle,
            theme: themeData,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
