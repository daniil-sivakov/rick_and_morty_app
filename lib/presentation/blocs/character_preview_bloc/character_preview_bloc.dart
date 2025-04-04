import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/exceptions/exceptions.dart';
import 'package:rick_and_morty_app/domain/models/application/data_source.dart';
import 'package:rick_and_morty_app/domain/models/application/user_settings.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/character_previews_page.dart';
import 'package:rick_and_morty_app/domain/models/data_transfer/load_characters_query.dart';
import 'package:rick_and_morty_app/domain/models/filtering/character_filter.dart';
import 'package:rick_and_morty_app/domain/repositories/user_settings_repository.dart';
import 'package:rick_and_morty_app/domain/use_cases/load_characters_page_use_case.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_state.dart';
import 'package:rick_and_morty_app/presentation/messages/data_processing_message.dart';

part 'character_preview_event.dart';

class CharacterPreviewBloc
    extends Bloc<CharacterPreviewEvent, CharacterPreviewState> {
  CharacterPreviewBloc(
    this._loadCharactersPage,
    UserSettingsRepository userSettingsRepository,
  ) : super(CharacterPreviewState.initial()) {
    on<_FullReload>(_handleFullReload, transformer: restartable());
    on<_RequestNewPage>(_handleRequestPage, transformer: droppable());
    on<_EditFilter>(_handleEditFilter, transformer: sequential());

    _userRepositorySubscription = userSettingsRepository.changes.listen(
      _onSettingsChanged,
    );
  }

  final LoadCharactersPage _loadCharactersPage;

  late final StreamSubscription _userRepositorySubscription;

  Future<void> _handleFullReload(
    _FullReload event,
    Emitter<CharacterPreviewState> emit,
  ) async {
    try {
      final int nextPageIndex = 1;

      emit(event.fullReload(state));

      final CharacterPreviewsPage page = await _loadCharactersPage.execute(
        LoadCharactersQuery(page: nextPageIndex, filter: state.filter),
      );

      emit(event.overwriteData(state, page.data, page.nextPage));

      emit(event.fullReloadCompleted(state));

      emit(
        event.notification(state, switch (page.dataSource) {
          DataSource.localCache => DataProcessingMessage.dataUsedFromCache,
          DataSource.network => DataProcessingMessage.dataFetched,
        }),
      );
    } on DomainException catch (exception) {
      emit(event.error(state, exception));
      emit(
        event.notification(state, DataProcessingMessage.fromError(exception)),
      );
    } on Object catch (error) {
      emit(event.error(state, error));
      emit(event.notification(state, DataProcessingMessage.fromError(error)));
      rethrow;
    } finally {
      emit(event.idle(state));
    }
  }

  Future<void> _handleRequestPage(
    _RequestNewPage event,
    Emitter<CharacterPreviewState> emit,
  ) async {
    try {
      final int? nextPageIndex = state.nextPage;
      if (nextPageIndex == null) return;
      emit(event.nextPageLoading(state));
      final page = await _loadCharactersPage.execute(
        LoadCharactersQuery(page: nextPageIndex, filter: state.filter),
      );
      emit(switch (page.dataSource) {
        DataSource.localCache => event.overwriteData(
          state,
          page.data,
          page.nextPage,
        ),
        DataSource.network => event.appendData(state, page.data, page.nextPage),
      });
    } on DomainException catch (exception) {
      emit(event.error(state, exception));
      emit(
        event.notification(state, DataProcessingMessage.fromError(exception)),
      );
    } on Object catch (error) {
      emit(event.error(state, error));
      emit(event.notification(state, DataProcessingMessage.fromError(error)));
      rethrow;
    } finally {
      emit(event.idle(state));
    }
  }

  void _handleEditFilter(
    _EditFilter event,
    Emitter<CharacterPreviewState> emit,
  ) {
    final CharacterFilter currentFilter = state.filter;
    final CharacterFilter newFilter = event.editor(currentFilter);

    emit(event.newFilter(state, newFilter));
  }

  void _onSettingsChanged(UserSettings settings) {
    if (settings.applicationMode == ApplicationMode.offline) {
      add(_EditFilter((_) => CharacterFilter(species: null, status: null)));
    }
  }

  @override
  Future<void> close() {
    _userRepositorySubscription.cancel();

    return super.close();
  }
}
