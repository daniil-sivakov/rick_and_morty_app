import 'package:flutter/widgets.dart';
import 'package:rick_and_morty_app/presentation/screens/character_list_screen/widgets/run_search_button.dart';
import 'package:rick_and_morty_app/presentation/screens/character_list_screen/widgets/species_selector.dart';
import 'package:rick_and_morty_app/presentation/screens/character_list_screen/widgets/status_selector.dart';

class CharacterListFilterBar extends StatelessWidget {
  const CharacterListFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        StatusSelector(),
        SpeciesSelector(),
        Spacer(),
        RunSearchButton(),
      ],
    );
  }
}
