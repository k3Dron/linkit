import 'package:flutter/material.dart';
import 'ProductCard.dart';

class Scroller extends StatelessWidget {
  const Scroller({Key? key}) : super(key: key);

  // Dummy product data
  final List<Map<String, dynamic>> products = const [
    {
      'productName': 'Product 1',
      'currentPrice': 19.99,
      'originalPrice': 29.99,
      'rating': 4.5,
    },
    {
      'productName': 'Product 2',
      'currentPrice': 24.99,
      'originalPrice': 34.99,
      'rating': 4.0,
    },
    {
      'productName': 'Product 3',
      'currentPrice': 14.99,
      'originalPrice': 19.99,
      'rating': 3.5,
    },
    {
      'productName': 'Product 4',
      'currentPrice': 39.99,
      'originalPrice': 49.99,
      'rating': 5.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          for (var product in products) ...[
            ProductCard(
              productName: product['productName'],
              currentPrice: product['currentPrice'],
              originalPrice: product['originalPrice'],
              rating: product['rating'],
              onAddToCart: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${product['productName']} added to cart!')),
                );
              },
            ),
            const SizedBox(width: 16), // spacing between cards
          ]
        ],
      ),
    );
  }
}
