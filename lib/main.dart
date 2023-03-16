import 'package:flutter/material.dart';
import 'dhruvit/order_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',

      theme: ThemeData(
      ),
      home: const OrderDetailsScreen(),

    );
  }
}
