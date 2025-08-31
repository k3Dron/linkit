import 'package:flutter/material.dart';
import 'package:linkit/screens/Ride/controllers/ride_controller.dart';

class WhereToField extends StatelessWidget {
  final RideController controller;

  const WhereToField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.dividerColor),
      ),
      child: Row(
        children: [
          Icon(Icons.arrow_forward, color: theme.hintColor),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: controller.searchController,
              decoration: InputDecoration.collapsed(
                hintText: "Where to?",
                hintStyle: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.hintColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
