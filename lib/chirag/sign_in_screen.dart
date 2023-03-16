import 'package:flutter/material.dart';

import '../common/button_common.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool radioData = true;
  bool _obscureText = true;
  bool checkBoxData = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: SingleChildScrollView(
        child: Column(
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
            const Text(
              'Sign Up For Free ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 57,
              width: 325,
              decoration: BoxDecoration(
                color: const Color(0xff605d5d),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person, color: Color(0xff53E88B)),
                  hintText: 'Anamwp . . |',
                  hintStyle: const TextStyle(color: Color(0xffF4F4F4)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 57,
              width: 325,
              decoration: BoxDecoration(
                color: const Color(0xff605d5d),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Color(0xff53E88B)),
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Color(0xffF4F4F4)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 57,
              width: 325,
              decoration: BoxDecoration(
                color: const Color(0xff605d5d),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Color(0xff53E88B)),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Color(0xffF4F4F4)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white),
                  ),
                ),
                obscureText: _obscureText,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                  value: checkBoxData,
                  shape: const CircleBorder(),
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.all(const Color(0xff53E88B)),
                  onChanged: (data) {
                    checkBoxData = data!;
                    setState(() {});
                  },
                ),
                const Text('Keep Me Signed In',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkBoxData,
                  shape: const CircleBorder(),
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.all(const Color(0xff53E88B)),
                  onChanged: (data) {
                    checkBoxData = data!;
                    setState(() {});
                  },
                ),
                const Text('Email Me About Special Pricing',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            const ButtonCommon(
              height: 57,
              width: 175,
              text: 'Create Account',
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'already have an account?',
              style: TextStyle(color: Color(0xff53E88B)),
            )
          ],
        ),
      ),
    );
  }
}
