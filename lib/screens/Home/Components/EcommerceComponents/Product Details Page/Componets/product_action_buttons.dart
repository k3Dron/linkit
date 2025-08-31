import 'package:flutter/material.dart';

class ProductActionButtons extends StatelessWidget {
  const ProductActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Add to Cart"),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Order Now"),
            ),
          ),
        ],
      ),
    );
  }
}
