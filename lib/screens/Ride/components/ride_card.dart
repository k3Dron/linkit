import 'package:flutter/material.dart';

class RideCard extends StatelessWidget {
  final String rideType;

  const RideCard({super.key, required this.rideType});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String imagePath = "assets/Ride/map_placeholder.png";
    String vehicleImage = "assets/Ride/car.png";
    String subtitle = "28 drivers nearby";
    String time = "4-8 min";

    if (rideType == "Bike") {
      vehicleImage = "assets/Ride/scooter.png";
      subtitle = "15 drivers nearby";
      time = "2-5 min";
    } else if (rideType == "Scoot") {
      vehicleImage = "assets/Ride/scooter.png";
      subtitle = "12 drivers nearby";
      time = "6-10 min";
    }

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Column(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: theme.colorScheme.primary,
            child: Row(
              children: [
                Image.asset(vehicleImage, height: 60),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rideType,
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(subtitle, style: const TextStyle(color: Colors.black54)),
                    Text(time, style: const TextStyle(color: Colors.black87)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
