import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({
    super.key,
    required this.characterId,
    this.characterName,
  });

  final String characterId;
  final String? characterName;

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
