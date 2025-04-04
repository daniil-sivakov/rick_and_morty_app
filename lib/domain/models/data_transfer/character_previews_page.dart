import 'package:rick_and_morty_app/domain/models/application/data_source.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';

class CharacterPreviewsPage {
  const CharacterPreviewsPage({
    required this.data,
    required this.dataSource,
    required this.page,
    required this.nextPage,
  });

  final List<CharacterPreview> data;
  final DataSource dataSource;
  final int page;
  final int? nextPage;
}
