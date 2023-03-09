import 'package:flutter/material.dart';

//import 'chirag/sign_up_screen.dart';
//import 'dhruvit/detail_product_screen.dart';
import 'dhuli/profile_screen.dart';

//import 'dhuli/splash_screen.dart';

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
      home: const ProfileScreen(),
    );
  }
}
