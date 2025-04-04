import 'package:rick_and_morty_app/domain/models/filtering/character_filter.dart';

class LoadCharactersQuery {
  final int page;
  final CharacterFilter filter;

  const LoadCharactersQuery({required this.page, required this.filter});
}
