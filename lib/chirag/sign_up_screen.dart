import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: Column(
        children: [
          Stack(
            children: const [
              Image(
                image: AssetImage(
                  "assets/images/greenback.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100, left: 100),
                child: Image(
                  image: AssetImage(
                    "assets/images/Logo.png",
                  ),
                  height: 140,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 250, left: 90),
                child: Text(
                  'FoodNinja',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff53E88B)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300, left: 110),
                child: Text(
                  'Deliever Favorite Food',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Text(
            'Login To Your Account',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
