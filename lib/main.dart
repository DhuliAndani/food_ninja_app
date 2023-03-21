import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'dhruvit/order_details_screen.dart';

=======

import 'chirag/on_boarding_two.dart';
//import 'dhuli/profile_screen.dart';
>>>>>>> dc3c3f891a8160a314e7492fdc0b006b701d5b1d
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
<<<<<<< HEAD

      title: "flutter demo",
      
      home: OrderDetailsScreen(),

=======
      title: 'Flutter Demo',
      home: OnBoardingTwo(),
>>>>>>> dc3c3f891a8160a314e7492fdc0b006b701d5b1d
    );
  }
}