import 'package:flutter/material.dart';
import 'package:food_ninja_app/chirag/on_boarding_two.dart';
//import 'dhuli/profile_screen.dart';
//import 'pinal/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: OnBoardingTwo(),
    );
  }
}
