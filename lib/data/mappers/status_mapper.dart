import 'package:rick_and_morty_app/domain/models/character_properties/character_simple_properties.dart';

class StatusMapper {
  Status fromJsonKey(String statusString) {
    return switch (statusString) {
      'Alive' => Status.alive,
      'Dead' => Status.dead,
      'unknown' => Status.unknown,
      _ => throw ArgumentError('Unexpected status string: $statusString'),
    };
  }
}
