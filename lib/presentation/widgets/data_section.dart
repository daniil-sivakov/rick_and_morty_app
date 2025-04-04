import 'package:flutter/material.dart';

class DataSection extends StatelessWidget {
  const DataSection({
    super.key,
    required this.label,
    required this.value,
    this.maxValueLines = 1,
  });

  final String label;
  final String? value;
  final int maxValueLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$label:', style: TextTheme.of(context).labelSmall),
        const SizedBox(height: 4),
        Text(
          value ?? '',
          style: TextTheme.of(context).bodyMedium,
          maxLines: maxValueLines,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
