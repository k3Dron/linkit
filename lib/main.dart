import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:linkit/firebase_options.dart';
import 'package:linkit/screens/Chat/controllers/chat_controller.dart';
import 'package:linkit/screens/Login/login_page.dart';
import 'package:linkit/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'themes.dart'; // Import our custom theme file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // ✅ web config here
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatController()),
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'linkIt',
      theme: AppTheme.lightTheme, // Light theme
      darkTheme: AppTheme.darkTheme, // Dark theme
      themeMode: ThemeMode.system, // Switches based on system settings
      home: LoginPage(),
    );
  }
}
