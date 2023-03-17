import 'package:flutter/material.dart';

import 'dhruvit/order_details_screen.dart';

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

      title: "flutter demo",
      
      home: OrderDetailsScreen(),
    );
  }
}