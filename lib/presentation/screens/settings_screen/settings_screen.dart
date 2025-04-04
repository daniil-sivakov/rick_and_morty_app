import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/presentation/blocs/user_settings_bloc/user_settings_bloc.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [_ThemeSelectorTile(), _ApplicationModeSwitchTile()],
    );
  }
}

class _ThemeSelectorTile extends StatelessWidget {
  const _ThemeSelectorTile();

  @override
  Widget build(BuildContext context) {
    final UserSettingsBloc bloc = context.watch<UserSettingsBloc>();
    final AppTheme selectedTheme = bloc.state.appTheme;

    return ListTile(
      onTap: () => bloc.add(UserSettingsEvent.toggleTheme()),
      title: Text(LocalizationPlug.selectedThemeLabel),
      subtitle: Text(switch (selectedTheme) {
        AppTheme.light => LocalizationPlug.themeLightLabel,
        AppTheme.dark => LocalizationPlug.themeDarkLabel,
        AppTheme.system => LocalizationPlug.themeSystemDefaultLabel,
      }),
      trailing: Icon(switch (selectedTheme) {
        AppTheme.light => Icons.light_mode,
        AppTheme.dark => Icons.dark_mode,
        AppTheme.system => Icons.brightness_auto,
      }),
    );
  }
}

class _ApplicationModeSwitchTile extends StatelessWidget {
  const _ApplicationModeSwitchTile();

  @override
  Widget build(BuildContext context) {
    final UserSettingsBloc bloc = context.watch<UserSettingsBloc>();
    final ApplicationMode selectedMode = bloc.state.applicationMode;

    return SwitchListTile(
      value: selectedMode == ApplicationMode.offline,
      onChanged: (_) => bloc.add(UserSettingsEvent.toggleApplicationMode()),
      title: Text(LocalizationPlug.offlineModeLabel),
    );
  }
}
