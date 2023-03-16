import 'package:flutter/material.dart';

<<<<<<< HEAD
import 'pinal/home_screen.dart';
=======
import 'chirag/upload_photo.dart';

//import 'dhuli/splash_screen.dart';
>>>>>>> 039b825fd591468978ac42b45d8cef0bbea7e7c7

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
<<<<<<< HEAD
      home: HomeScreen(),
=======
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Upload_Photo(),
>>>>>>> 039b825fd591468978ac42b45d8cef0bbea7e7c7
    );
  }
}
