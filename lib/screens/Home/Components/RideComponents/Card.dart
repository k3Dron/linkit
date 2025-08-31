import 'package:flutter/material.dart';
import 'package:linkit/screens/main_screen.dart';

class RideCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const RideCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 14,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(initialIndex: 1),
                      ),
                    );
                  },
                  child: const Text('Book a Ride'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
