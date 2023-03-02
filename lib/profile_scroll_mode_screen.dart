import 'package:flutter/material.dart';

class ProfileScrollModeScreen extends StatefulWidget {
  const ProfileScrollModeScreen({super.key});

  @override
  State<ProfileScrollModeScreen> createState() => _ProfileScrollModeScreenState();
}

class _ProfileScrollModeScreenState extends State<ProfileScrollModeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Profile Scroll Mode"),
      ),
    );
  }
}