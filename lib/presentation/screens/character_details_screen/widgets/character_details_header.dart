import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/widgets/character_details_image.dart';
import 'package:rick_and_morty_app/presentation/screens/character_details_screen/widgets/character_details_information.dart';

class CharacterDetailsHeader extends StatelessWidget {
  const CharacterDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CharacterDetailsImage(),
          SizedBox(width: 16),
          Expanded(child: CharacterDetailsInformation()),
        ],
      ),
    );
  }
}
