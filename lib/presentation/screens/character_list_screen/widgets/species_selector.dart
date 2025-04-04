import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/filtering/character_filter.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_bloc.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';

class SpeciesSelector extends StatelessWidget {
  const SpeciesSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final CharacterPreviewBloc bloc = context.watch<CharacterPreviewBloc>();
    final SpeciesFilterKey? species = bloc.state.filter.species;

    return DropdownMenu<SpeciesFilterKey?>(
      initialSelection: species,
      label: Text(LocalizationPlug.speciesLabel),
      onSelected: (tag) {
        bloc.add(
          CharacterPreviewEvent.editFilter(
            (filter) => filter.copyWith(species: tag),
          ),
        );
      },
      dropdownMenuEntries: [
        DropdownMenuEntry(
          value: null,
          label: LocalizationPlug.emptySelectionString,
        ),
        DropdownMenuEntry(
          label: LocalizationPlug.speciesHumanLabel,
          value: SpeciesFilterKey.human,
        ),
        DropdownMenuEntry(
          label: LocalizationPlug.speciesAlienLabel,
          value: SpeciesFilterKey.alien,
        ),
      ],
    );
  }
}
