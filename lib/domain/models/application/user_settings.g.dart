// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) =>
    _UserSettings(
      appTheme: $enumDecode(_$AppThemeEnumMap, json['appTheme']),
      applicationMode: $enumDecode(
        _$ApplicationModeEnumMap,
        json['applicationMode'],
      ),
    );

Map<String, dynamic> _$UserSettingsToJson(_UserSettings instance) =>
    <String, dynamic>{
      'appTheme': _$AppThemeEnumMap[instance.appTheme]!,
      'applicationMode': _$ApplicationModeEnumMap[instance.applicationMode]!,
    };

const _$AppThemeEnumMap = {
  AppTheme.light: 'light',
  AppTheme.dark: 'dark',
  AppTheme.system: 'system',
};

const _$ApplicationModeEnumMap = {
  ApplicationMode.online: 'online',
  ApplicationMode.offline: 'offline',
};
