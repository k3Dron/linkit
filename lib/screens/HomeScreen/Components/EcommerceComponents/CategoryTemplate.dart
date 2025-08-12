import 'package:flutter/material.dart';
import 'scroller.dart';

class Categorytemplate extends StatelessWidget {
  String categoryName = "Category Name";
  
  Categorytemplate({
    super.key,
    required this.categoryName,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            categoryName,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
        const Scroller(), // Assuming Scroller is defined in the same file or imported
      ],
    );
  }
}