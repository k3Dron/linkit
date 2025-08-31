import 'package:flutter/material.dart';

class DeliveryAgentCard extends StatefulWidget {
  const DeliveryAgentCard({super.key});

  @override
  State<DeliveryAgentCard> createState() => _DeliveryAgentCardState();
}

class _DeliveryAgentCardState extends State<DeliveryAgentCard> {
  bool isDeliveryAgent = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Question Text
            Expanded(
              child: Text(
                "Wanna be a delivery agent?",
                style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
            ),

            // Yes/No Switch
            Row(
              children: [
                Text(
                  isDeliveryAgent ? "Yes" : "No",
                  style: theme.textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
                const SizedBox(width: 15),
                Switch(
                  value: isDeliveryAgent,
                  activeThumbColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      isDeliveryAgent = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
