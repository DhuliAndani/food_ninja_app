import 'package:flutter/material.dart';

class SuccessNotificationScreen extends StatefulWidget {
  const SuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  State<SuccessNotificationScreen> createState() =>
      _SuccessNotificationScreenState();
}

class _SuccessNotificationScreenState extends State<SuccessNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [Image.asset("assets/images/")],
          ),
        ],
      ),
    );
  }
}
