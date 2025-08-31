import 'package:flutter/material.dart';

class RideController {
  String selectedRide = "Car";
  final TextEditingController searchController = TextEditingController();

  void changeRide(String ride) {
    selectedRide = ride;
  }
}
