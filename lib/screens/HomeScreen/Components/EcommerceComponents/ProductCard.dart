import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // final String imageUrl;
  final String productName;
  final double currentPrice;
  final double originalPrice;
  final double rating;
  final VoidCallback onAddToCart;

  const ProductCard({
    Key? key,
    // required this.imageUrl,
    required this.productName,
    required this.currentPrice,
    required this.originalPrice,
    required this.rating,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percentOff = ((originalPrice - currentPrice) / originalPrice * 100).round();

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(8),
            //   child: Image.network(
            //     imageUrl,
            //     height: 120,
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // const SizedBox(height: 8),
            // Product Name
            Text(
              productName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            // Current Price
            Text(
              '\$${currentPrice.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            // Original Price and Percentage Off
            Row(
              children: [
                Text(
                  '\$${originalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(width: 8),
                if (percentOff > 0)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '-$percentOff%',
                      style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            // Rating and Add to Cart Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      rating.toStringAsFixed(1),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: onAddToCart,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: const Icon(  Icons.add_shopping_cart, size: 18, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}