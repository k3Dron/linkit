import 'package:flutter/material.dart';
import 'ProductCard.dart';

class Scroller extends StatelessWidget {
  const Scroller({super.key});

  // Dummy product data
final List<Map<String, dynamic>> products = const [
  {
    'productName': 'Product 1',
    'currentPrice': 19.99,
    'originalPrice': 29.99,
    'rating': 4.5,
    'imageUrl': 'https://m.media-amazon.com/images/I/71yTAfdWdXL._SL1500_.jpg',
  },
  {
    'productName': 'Product 2',
    'currentPrice': 24.99,
    'originalPrice': 34.99,
    'rating': 4.0,
    'imageUrl': 'https://m.media-amazon.com/images/I/6135lAS5rcL._SL1024_.jpg',
  },
  {
    'productName': 'Product 3',
    'currentPrice': 14.99,
    'originalPrice': 19.99,
    'rating': 3.5,
    'imageUrl': 'https://m.media-amazon.com/images/I/61SA3y2PU5L._SL1024_.jpg',
  },
  {
    'productName': 'Product 4',
    'currentPrice': 39.99,
    'originalPrice': 49.99,
    'rating': 5.0,
    'imageUrl': 'https://m.media-amazon.com/images/I/6135lAS5rcL._SL1024_.jpg',
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
              imageUrl: product['imageUrl'], 
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
