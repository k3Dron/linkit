import 'package:flutter/material.dart';

class ProductTitleSection extends StatelessWidget {
  final String title;
  final String location;

  const ProductTitleSection({
    super.key,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.titleLarge),
          const SizedBox(height: 4),
          Text(location, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
