import 'package:flutter/material.dart';

class ProductPriceSection extends StatelessWidget {
  final String originalPrice;
  final String discountedPrice;
  final String discountText;
  final double rating;

  const ProductPriceSection({
    super.key,
    required this.originalPrice,
    required this.discountedPrice,
    required this.discountText,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Rating Row
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star_half, color: Colors.amber, size: 18),
              Icon(Icons.star_border, color: Colors.amber, size: 18),
            ],
          ),
          const SizedBox(height: 4),

          // Prices
          Row(
            children: [
              Text(
                originalPrice,
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                discountedPrice,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                discountText,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
