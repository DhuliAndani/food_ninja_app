import 'package:flutter/material.dart';

import 'dhruvit/detail_menu_Screen.dart';

//import 'dhuli/splash_screen.dart';
import 'pinal/success_notification_screen.dart';

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
      home: const DetailMenuScreen(),
    );
  }
}
