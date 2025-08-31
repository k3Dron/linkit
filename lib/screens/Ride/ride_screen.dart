import 'package:flutter/material.dart';
import 'package:linkit/screens/Ride/components/input_field.dart';
import 'package:linkit/screens/Ride/components/ride_card.dart';
import 'package:linkit/screens/Ride/components/ride_type.dart';
import 'package:linkit/screens/Ride/controllers/ride_controller.dart';

class RideScreen extends StatefulWidget {
  const RideScreen({super.key});

  @override
  State<RideScreen> createState() => _RideScreenState();
}

class _RideScreenState extends State<RideScreen> {
  final RideController controller = RideController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("linkit", style: theme.textTheme.headlineMedium)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WhereToField(controller: controller),
            const SizedBox(height: 24),
            RideCard(rideType: controller.selectedRide),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RideTypeButton(
                  label: "Car",
                  isSelected: controller.selectedRide == "Car",
                  onTap: () {
                    setState(() => controller.changeRide("Car"));
                  },
                ),
                RideTypeButton(
                  label: "Bike",
                  isSelected: controller.selectedRide == "Bike",
                  onTap: () {
                    setState(() => controller.changeRide("Bike"));
                  },
                ),
                RideTypeButton(
                  label: "Scoot",
                  isSelected: controller.selectedRide == "Scoot",
                  onTap: () {
                    setState(() => controller.changeRide("Scoot"));
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
