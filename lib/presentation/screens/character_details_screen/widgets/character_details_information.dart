import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';
import 'package:rick_and_morty_app/presentation/widgets/data_section.dart';

class CharacterDetailsInformation extends StatelessWidget {
  const CharacterDetailsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final CharacterDetails? details = context.select(
      (CharacterDetailsBloc bloc) => bloc.state.details,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        DataSection(label: 'Species', value: details?.species),
        DataSection(label: 'Gender', value: details?.gender),
        DataSection(
          label: 'Origin',
          value: details?.origin.name,
          maxValueLines: 2,
        ),
      ],
    );
  }
}
