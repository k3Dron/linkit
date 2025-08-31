import 'package:flutter/material.dart';
import 'package:linkit/screens/Home/Components/EcommerceComponents/Product%20Details%20Page/Componets/product_action_buttons.dart';
import 'package:linkit/screens/Home/Components/EcommerceComponents/Product%20Details%20Page/Componets/product_description_section.dart';
import 'package:linkit/screens/Home/Components/EcommerceComponents/Product%20Details%20Page/Componets/product_image_section.dart';
import 'package:linkit/screens/Home/Components/EcommerceComponents/Product%20Details%20Page/Componets/product_price_section.dart';
import 'package:linkit/screens/Home/Components/EcommerceComponents/Product%20Details%20Page/Componets/product_title_section.dart';

class ProductDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String originalPrice;
  final String discountedPrice;
  final String discountText;
  final double rating;
  final String description;

  const ProductDetailsPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.originalPrice,
    required this.discountedPrice,
    required this.discountText,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageSection(imageUrl: imageUrl),
            ProductTitleSection(title: title, location: location),
            ProductPriceSection(
              originalPrice: originalPrice,
              discountedPrice: discountedPrice,
              discountText: discountText,
              rating: rating,
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Product Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            ProductDescriptionSection(description: description),
            ProductActionButtons(),
          ],
        ),
      ),
    );
  }
}
