import 'package:flutter/material.dart';

class TotalOrderSection extends StatelessWidget {
  final double total;
  const TotalOrderSection({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        "Total: \$$total",
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
