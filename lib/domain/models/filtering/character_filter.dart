import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_filter.freezed.dart';

enum StatusFilterKey { alive, dead, unknown }

enum SpeciesFilterKey { alien, human }

@freezed
abstract class CharacterFilter with _$CharacterFilter {
  const CharacterFilter._();

  static CharacterFilter empty() =>
      CharacterFilter(species: null, status: null);

  const factory CharacterFilter({
    required SpeciesFilterKey? species,
    required StatusFilterKey? status,
  }) = _CharacterFilter;

  bool get isNotEmpty => species != null || status != null;
}
