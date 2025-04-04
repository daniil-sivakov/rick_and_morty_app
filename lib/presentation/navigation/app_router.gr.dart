// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/character_details_screen.dart'
    as _i1;
import 'package:rick_and_morty_app/presentation/screens/character_list_screen/character_list_screen.dart'
    as _i2;
import 'package:rick_and_morty_app/presentation/screens/home_screen/home_screen.dart'
    as _i3;
import 'package:rick_and_morty_app/presentation/screens/no_connection_screen/no_connection_screen.dart'
    as _i4;
import 'package:rick_and_morty_app/presentation/screens/settings_screen/settings_screen.dart'
    as _i5;

/// generated route for
/// [_i1.CharacterDetailsScreen]
class CharacterDetailsRoute
    extends _i6.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    _i7.Key? key,
    required String characterId,
    String? characterName,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         CharacterDetailsRoute.name,
         args: CharacterDetailsRouteArgs(
           key: key,
           characterId: characterId,
           characterName: characterName,
         ),
         initialChildren: children,
       );

  static const String name = 'CharacterDetailsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CharacterDetailsRouteArgs>();
      return _i1.CharacterDetailsScreen(
        key: args.key,
        characterId: args.characterId,
        characterName: args.characterName,
      );
    },
  );
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    this.key,
    required this.characterId,
    this.characterName,
  });

  final _i7.Key? key;

  final String characterId;

  final String? characterName;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{key: $key, characterId: $characterId, characterName: $characterName}';
  }
}

/// generated route for
/// [_i2.CharacterListScreen]
class CharacterListRoute extends _i6.PageRouteInfo<void> {
  const CharacterListRoute({List<_i6.PageRouteInfo>? children})
    : super(CharacterListRoute.name, initialChildren: children);

  static const String name = 'CharacterListRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.CharacterListScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.NoConnectionScreen]
class NoConnectionRoute extends _i6.PageRouteInfo<NoConnectionRouteArgs> {
  NoConnectionRoute({
    _i7.Key? key,
    required _i8.Future<bool> Function() tryReload,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         NoConnectionRoute.name,
         args: NoConnectionRouteArgs(key: key, tryReload: tryReload),
         initialChildren: children,
       );

  static const String name = 'NoConnectionRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NoConnectionRouteArgs>();
      return _i4.NoConnectionScreen(key: args.key, tryReload: args.tryReload);
    },
  );
}

class NoConnectionRouteArgs {
  const NoConnectionRouteArgs({this.key, required this.tryReload});

  final _i7.Key? key;

  final _i8.Future<bool> Function() tryReload;

  @override
  String toString() {
    return 'NoConnectionRouteArgs{key: $key, tryReload: $tryReload}';
  }
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute({List<_i6.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingsScreen();
    },
  );
}
