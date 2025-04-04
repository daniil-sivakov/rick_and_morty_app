part of 'character_preview_bloc.dart';

sealed class CharacterPreviewEvent {
  factory CharacterPreviewEvent.requestNewPage() = _RequestNewPage;

  factory CharacterPreviewEvent.editFilter(
    CharacterFilter Function(CharacterFilter) editor,
  ) = _EditFilter;

  factory CharacterPreviewEvent.reload() = _FullReload;
}

class _RequestNewPage implements CharacterPreviewEvent {
  const _RequestNewPage();
}

class _EditFilter implements CharacterPreviewEvent {
  const _EditFilter(this.editor);

  final CharacterFilter Function(CharacterFilter) editor;
}

class _FullReload implements CharacterPreviewEvent {
  const _FullReload();
}
