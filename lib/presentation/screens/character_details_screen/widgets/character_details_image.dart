import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/domain/models/character_details/character_details.dart';
import 'package:rick_and_morty_app/presentation/blocs/character_details_bloc/character_details_bloc.dart';

class CharacterDetailsImage extends StatelessWidget {
  const CharacterDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 200;

    final CharacterDetails? details = context.select(
      (CharacterDetailsBloc bloc) => bloc.state.details,
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: ColoredBox(
          key: ValueKey(details?.imageUrl),
          color: ColorScheme.of(context).primaryContainer,
          child: switch (details) {
            CharacterDetails(:final imageUrl) => CachedNetworkImage(
              imageUrl: imageUrl,
              width: imageSize,
              height: imageSize,
            ),
            null => const SizedBox.square(dimension: imageSize),
          },
        ),
      ),
    );
  }
}
