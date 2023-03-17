import 'package:flutter/material.dart';
import 'package:food_ninja_app/dhuli/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "flutter demo",
      theme: ThemeData(),
      // home: const SignInScreen(),
      home: const ProfileScreen(),
    );
  }
}
