import 'package:rick_and_morty_app/data/models/location_data/location_data.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/location.dart';

class LocationMapper {
  Location toDomainModel(LocationData data) {
    return Location(name: data.name);
  }
}
