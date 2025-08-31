import 'package:flutter/material.dart';

class ShopAvatar extends StatelessWidget {
  final Color avatarColor;
  final String label;
  final double radius;
  final TextStyle? textStyle;

  const ShopAvatar({
    super.key,
    required this.avatarColor,
    required this.label,
    this.radius = 32.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: avatarColor,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}