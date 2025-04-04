import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/data/models/character_preview_data/character_preview_data.dart';
import 'package:rick_and_morty_app/data/models/pagination_data/pagination_data.dart';

part 'character_previews_page.freezed.dart';
part 'character_previews_page.g.dart';

@freezed
abstract class CharacterPreviewsPage with _$CharacterPreviewsPage {
  const factory CharacterPreviewsPage({
    required PaginationData info,
    required List<CharacterPreviewData> results,
  }) = _CharacterPreviewsPage;

  factory CharacterPreviewsPage.fromJson(Map<String, Object?> json) =>
      _$CharacterPreviewsPageFromJson(json);
}
