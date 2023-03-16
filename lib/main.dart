import 'package:flutter/material.dart';

//import 'dhruvit/your_orders_screen.dart';
import 'chirag/on_boarding_two.dart';
//import 'dhuli/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingTwo(),
    );
  }
}
