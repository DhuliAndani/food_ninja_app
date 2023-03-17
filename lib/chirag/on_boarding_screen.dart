import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: Stack(
        children: const [
          Image(
            image: AssetImage(
              "assets/images/green.png",
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Image(
                image: AssetImage(
                  "assets/images/Logo.png",
                ),
                height: 140,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 440, left: 90),
            child: Text(
              'FoodNinja',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xff53E88B),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 490, left: 110),
            child: Text(
              'Deliever Favorite Food',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
