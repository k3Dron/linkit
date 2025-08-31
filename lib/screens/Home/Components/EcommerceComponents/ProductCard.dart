import 'package:flutter/material.dart';
import 'package:linkit/screens/Home/Components/EcommerceComponents/Product%20Details%20Page/product_details_page.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double currentPrice;
  final double originalPrice;
  final double rating;
  final VoidCallback onAddToCart;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.currentPrice,
    required this.originalPrice,
    required this.rating,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    final percentOff = ((originalPrice - currentPrice) / originalPrice * 100).round();

    return InkWell(
      onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => ProductDetailsPage(
          imageUrl: imageUrl,
          title: productName,
          location: "Location of Purchase",
          originalPrice: "₹${originalPrice.toStringAsFixed(0)}",
          discountedPrice: "₹${currentPrice.toStringAsFixed(0)}",
          discountText: "upto $percentOff% Off",
          rating: rating,
          description: "Perhaps the most iconic sneaker of all-time...",
        ),
        ),
      );
      },
      child: Card(
      color: const Color.fromARGB(255, 13, 13, 13),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            height: 200,
            fit: BoxFit.cover,
          ),
          ),
          const SizedBox(height: 8),
          Text(
          productName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          Row(
          children: [
            Text("\$$currentPrice", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(width: 6),
            Text("\$$originalPrice", style: const TextStyle(decoration: TextDecoration.lineThrough, fontSize: 12)),
            const SizedBox(width: 6),
            Text("upto $percentOff% off", style: const TextStyle(color: Colors.red, fontSize: 12)),
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
            const SizedBox(width: 90),
            ElevatedButton(
            onPressed: onAddToCart,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
            child: const Icon(Icons.add_shopping_cart, size: 18, color: Colors.white),
            ),
          ],
          ),
        ],
        ),
      ),
      ),
    );
  }
}