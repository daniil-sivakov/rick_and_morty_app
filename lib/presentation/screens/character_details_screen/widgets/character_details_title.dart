import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';

class CharacterDetailsTitle extends StatelessWidget {
  const CharacterDetailsTitle({super.key, this.fallback});

  final String? fallback;

  @override
  Widget build(BuildContext context) {
    final String? title = context.select(
      (CharacterDetailsBloc bloc) => bloc.state.details?.name ?? fallback,
    );

    return Text(title ?? '');
  }
}
