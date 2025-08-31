import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> variations;
  final double rating;
  final double price;
  final double oldPrice;
  final int discount;
  final int quantity;

  const CartItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.variations,
    required this.rating,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.quantity,
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
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imageUrl, width: 80, height: 80, fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 4),
                  Text("Variations: ${variations.join(", ")}"),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Text(rating.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\$$price", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(width: 6),
                      Text("\$$oldPrice", style: const TextStyle(decoration: TextDecoration.lineThrough, fontSize: 12)),
                      const SizedBox(width: 6),
                      Text("upto $discount% off", style: const TextStyle(color: Colors.red, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text("Total Order ($quantity):  \$$price"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
