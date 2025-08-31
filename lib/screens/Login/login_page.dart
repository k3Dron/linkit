import 'package:flutter/material.dart';
import 'package:linkit/auth_service.dart';
import 'package:linkit/screens/Home/home_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[700],
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          onPressed: () async {
            final userCred = await _authService.signInWithGoogle();
            if (userCred != null) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            }
          },
          child: const Text("Sign in with Google"),
        ),
      ),
    );
  }
}
