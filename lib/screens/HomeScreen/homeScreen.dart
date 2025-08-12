import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linkit/screens/Components/SearchField.dart';
import 'package:linkit/screens/HomeScreen/components/EcommerceComponents/CategoryTemplate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          
          children: [
            Switch(
              value: true,
              onChanged: (bool value) {
                // Handle toggle switch change
              },
            ),
            const SizedBox(width: 8),
            const Text('Active'),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                // Handle profile button press
              },
            ),
          ],
        ),
      ),
      body:  ListView(
        children: [
          InputFieldWithSend(
            onSend: (String message) {
              // Handle the send action
              if (kDebugMode) {
                print('Message sent: $message');
              }
            },
          ),
           Categorytemplate(categoryName: "Electronics"),
           Categorytemplate(categoryName: "Clothing"
          ),
           Categorytemplate(categoryName: "Food Items"),
           Categorytemplate(categoryName: "Stationary"),
           Categorytemplate(categoryName: "Pharmaceuticals"),
        ]
      ),
    );
  }
}