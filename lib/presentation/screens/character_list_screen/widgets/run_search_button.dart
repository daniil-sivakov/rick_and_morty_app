import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_preview_bloc/character_preview_state.dart';

class RunSearchButton extends StatelessWidget {
  const RunSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final CharacterPreviewBloc bloc = context.watch<CharacterPreviewBloc>();

    return IconButton(
      onPressed: () {
        bloc.add(CharacterPreviewEvent.reload());
      },
      icon: switch (bloc.state) {
        FullReloadCharacterPreviewState() => CircularProgressIndicator(
          constraints: BoxConstraints.tightFor(width: 16, height: 16),
        ),
        _ => Icon(Icons.search),
      },
    );
  }
}
