import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/filtering/character_filter.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_bloc.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';

class StatusSelector extends StatelessWidget {
  const StatusSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final CharacterPreviewBloc bloc = context.watch<CharacterPreviewBloc>();
    final StatusFilterKey? status = bloc.state.filter.status;

    return DropdownMenu<StatusFilterKey?>(
      initialSelection: status,
      label: Text(LocalizationPlug.statusLabel),
      onSelected: (filterKey) {
        bloc.add(
          CharacterPreviewEvent.editFilter(
            (filter) => filter.copyWith(status: filterKey),
          ),
        );
      },
      dropdownMenuEntries: [
        DropdownMenuEntry(
          value: null,
          label: LocalizationPlug.emptySelectionString,
        ),
        DropdownMenuEntry(
          label: LocalizationPlug.statusAliveLabel,
          value: StatusFilterKey.alive,
        ),
        DropdownMenuEntry(
          label: LocalizationPlug.statusDeadLabel,
          value: StatusFilterKey.dead,
        ),
        DropdownMenuEntry(
          label: LocalizationPlug.statusUnknownLabel,
          value: StatusFilterKey.unknown,
        ),
      ],
    );
  }
}
