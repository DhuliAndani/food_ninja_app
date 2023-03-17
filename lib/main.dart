import 'package:flutter/material.dart';

import 'chirag/Signup_success_notification_screen.dart';

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
      // home: const SignInScreen(),
      home: SignupSuccessNotificationScreen(),
    );
  }
}