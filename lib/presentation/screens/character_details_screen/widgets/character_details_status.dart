import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/character_simple_properties.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';
import 'package:rick_and_morty_app/presentation/widgets/data_section.dart';

class CharacterDetailsStatus extends StatelessWidget {
  const CharacterDetailsStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final CharacterDetails? details = context.select(
      (CharacterDetailsBloc bloc) => bloc.state.details,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DataSection(
          label: 'Status',
          value: switch (details?.status) {
            Status.alive => LocalizationPlug.statusAliveLabel,
            Status.dead => LocalizationPlug.statusDeadLabel,
            Status.unknown => LocalizationPlug.statusUnknownLabel,
            null => null,
          },
        ),
        DataSection(
          label: 'Last known location',
          value: details?.lastKnownLocation.name,
        ),
      ],
    );
  }
}
