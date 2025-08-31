import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final String address;
  final String contact;

  const AddressCard({
    super.key,
    required this.address,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            const Icon(Icons.location_on_outlined),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address :", style: Theme.of(context).textTheme.bodyMedium),
                  Text(address, style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 4),
                  Text("Contact: $contact", style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit, size: 20),
            ),
            const CircleAvatar(
              radius: 14,
              child: Icon(Icons.circle_outlined, size: 16),
            )
          ],
        ),
      ),
    );
  }
}
