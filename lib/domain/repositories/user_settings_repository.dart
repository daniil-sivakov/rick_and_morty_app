import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';

abstract class UserSettingsRepository {
  Future<UserSettings> load();

  Future<void> save(UserSettings settings);

  Stream<UserSettings> get changes;
}
