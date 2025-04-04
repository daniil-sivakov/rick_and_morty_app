import 'package:rick_and_morty_app/domain/models/character_properties/character_simple_properties.dart';
import 'package:rick_and_morty_app/domain/models/filtering/character_filter.dart';

class CharacterFilterMapper {
  (String? status, String? species) splitIntoJsonKeys(CharacterFilter filter) {
    return (
      switch (filter.status) {
        StatusFilterKey.alive => '"Alive"',
        StatusFilterKey.dead => '"Dead"',
        StatusFilterKey.unknown => '"unknown"',
        null => null,
      },
      switch (filter.species) {
        SpeciesFilterKey.human => '"Human"',
        SpeciesFilterKey.alien => '"Alien"',
        null => null,
      },
    );
  }

  (Status? status, String? species) splitIntoDomainValues(
    CharacterFilter filter,
  ) {
    return (
      switch (filter.status) {
        StatusFilterKey.alive => Status.alive,
        StatusFilterKey.dead => Status.dead,
        StatusFilterKey.unknown => Status.unknown,
        null => null,
      },
      switch (filter.species) {
        SpeciesFilterKey.human => "Human",
        SpeciesFilterKey.alien => "Alien",
        null => null,
      },
    );
  }
}
