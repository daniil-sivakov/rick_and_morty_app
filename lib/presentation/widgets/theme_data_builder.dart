import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/presentation/blocs/user_settings_bloc/user_settings_bloc.dart';

class ThemeDataBuilder extends StatelessWidget {
  const ThemeDataBuilder({super.key, required this.builder});

  final Widget Function(ThemeData themeData) builder;

  @override
  Widget build(BuildContext context) {
    final AppTheme appTheme = context.select(
      (UserSettingsBloc bloc) => bloc.state.appTheme,
    );

    final Brightness platformBrightness = MediaQuery.platformBrightnessOf(
      context,
    );

    final ThemeData themeData = switch ((appTheme, platformBrightness)) {
      (AppTheme.light, _) => ThemeData.light(),
      (AppTheme.dark, _) => ThemeData.dark(),
      (AppTheme.system, Brightness.light) => ThemeData.light(),
      (AppTheme.system, Brightness.dark) => ThemeData.dark(),
    };

    final actualThemeData = themeData.copyWith(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: themeData.colorScheme.onPrimary),
        backgroundColor: themeData.colorScheme.primary,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: themeData.colorScheme.onPrimary,
        ),
      ),
    );

    return builder(actualThemeData);
  }
}
