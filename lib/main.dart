import 'package:flutter/material.dart';
import 'package:food_ninja_app/dhuli/profile_screen.dart';
import 'package:food_ninja_app/chirag/sign_in_screen.dart';

import 'pinal/home_screen.dart';

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
      // home: const SignInScreen(),
      home: const ProfileScreen(),
    );
  }
}