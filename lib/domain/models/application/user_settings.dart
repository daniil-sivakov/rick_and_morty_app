import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

enum AppTheme { light, dark, system }

enum ApplicationMode { online, offline }

// For reviewer:
// Typically, models related to user settings can reside in the presentation layer.
// However, the presence of offline mode makes such an approach inconvenient,
// as the execution of use cases depends on offline mode.
// Therefore, I believe the appropriate place to define this logic is the domain layer.
@freezed
abstract class UserSettings with _$UserSettings {
  const UserSettings._();

  factory UserSettings.fallback() {
    return UserSettings(
      appTheme: AppTheme.system,
      applicationMode: ApplicationMode.online,
    );
  }

  const factory UserSettings({
    required AppTheme appTheme,
    required ApplicationMode applicationMode,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, Object?> json) =>
      _$UserSettingsFromJson(json);

  UserSettings nextTheme() {
    final int currentThemeIndex = appTheme.index;
    final int totalThemes = AppTheme.values.length;
    final int newThemeIndex = (currentThemeIndex + 1) % totalThemes;

    return copyWith(appTheme: AppTheme.values[newThemeIndex]);
  }
}
