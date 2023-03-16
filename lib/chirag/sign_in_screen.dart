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
            Text(
              'Sign Up For Free ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 57,
              width: 325,
              decoration: BoxDecoration(
                color: Color(0xff605d5d),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Color(0xff53E88B)),
                  hintText: 'Anamwp . . |',
                  hintStyle: TextStyle(color: Color(0xffF4F4F4)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 57,
              width: 325,
              decoration: BoxDecoration(
                color: Color(0xff605d5d),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Color(0xff53E88B)),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xffF4F4F4)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 57,
              width: 325,
              decoration: BoxDecoration(
                color: Color(0xff605d5d),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Color(0xff53E88B)),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xffF4F4F4)),
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Radio<bool>(
                  activeColor: Color(0xff53E88B),
                  groupValue: radioData,
                  value: true,
                  toggleable: true,
                  onChanged: (newValue) {
                    debugPrint("value  --> $newValue");
                    radioData = newValue!;
                    setState(() {});
                  },
                ),
                Text('Keep Me Signed In',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Radio<bool>(
                  activeColor: Color(0xff53E88B),
                  groupValue: radioData,
                  value: true,
                  onChanged: (newValue) {
                    debugPrint("value  --> $newValue");
                    radioData = newValue!;
                    setState(() {});
                  },
                ),
                Text('Email Me About Special Pricing',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            ButtinCommon(
              width: 175,
              text: 'Create Account',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'already have an account?',
              style: TextStyle(color: Color(0xff53E88B)),
            )
          ],
        ),
      ),
    );
  }
}
