import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/button_common.dart';

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
              'Login To Your Account',
              style: TextStyle(fontSize: 20, color: Colors.blue),
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
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Color(0xffF4F4F4)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
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
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color(0xffF4F4F4)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Or Continue With',
              style: TextStyle(color: Colors.white),
            ),
            //
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 57,
                    width: 152,
                    decoration: BoxDecoration(
                      color: Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/facebook-3 1.png',
                          height: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 57,
                  width: 152,
                  decoration: BoxDecoration(
                    color: Color(0xff605d5d),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'assets/images/google-icon 1 (1).png',
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Google',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'Forgot Your Password?',
              style: TextStyle(color: Color(0xff53E88B)),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonCommon(
              text: 'Login',
              width: 141,
            ),
          ],
        ),
      ),
    );
  }
}
