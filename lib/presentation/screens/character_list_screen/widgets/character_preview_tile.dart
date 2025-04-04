import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/domain/models/character_preview/character_preview.dart';
import 'package:rick_and_morty_app/domain/models/character_properties/character_simple_properties.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';
import 'package:rick_and_morty_app/presentation/widgets/data_section.dart';

class CharacterPreviewTile extends StatelessWidget {
  const CharacterPreviewTile({
    super.key,
    required this.character,
    required this.onTap,
  });

  final CharacterPreview character;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorScheme.of(context).surfaceContainer,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            RepaintBoundary(
              child: Ink.image(
                image: CachedNetworkImageProvider(character.imageUrl),
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 150),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      style: TextTheme.of(context).titleMedium,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 4),
                    _CharacterStatusText(character: character),
                    const SizedBox(height: 8),
                    DataSection(
                      label: LocalizationPlug.lastKnownLocationLabel,
                      value: character.lastKnownLocation,
                    ),
                    const SizedBox(height: 8),
                    Flexible(
                      child: DataSection(
                        label: LocalizationPlug.firstSeenEpisodeLabel,
                        value: character.firstSeenEpisode,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}

class _CharacterStatusText extends StatelessWidget {
  const _CharacterStatusText({required this.character});

  final CharacterPreview character;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextTheme.of(context).bodySmall,
        children: [
          TextSpan(
            text: '●',
            style: TextStyle(
              color: switch (character.status) {
                Status.alive => Colors.green,
                Status.dead => Colors.red,
                Status.unknown => Colors.grey,
              },
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 8)),
          TextSpan(
            text: switch (character.status) {
              Status.alive => LocalizationPlug.statusAliveLabel,
              Status.dead => LocalizationPlug.statusDeadLabel,
              Status.unknown => LocalizationPlug.statusUnknownLabel,
            },
          ),
          TextSpan(text: ' - '),
          TextSpan(text: character.species),
        ],
      ),
    );
  }
}
