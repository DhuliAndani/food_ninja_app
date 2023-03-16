import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/button_common.dart';

class SignupSuccessNotificationScreen extends StatefulWidget {
  const SignupSuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  State<SignupSuccessNotificationScreen> createState() =>
      _SignupSuccessNotificationScreenState();
}

class _SignupSuccessNotificationScreenState
    extends State<SignupSuccessNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/green.png"),
          scale: 1,
          alignment: Alignment.topRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Stack(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 190, left: 100),
                  child: Image(
                    image: AssetImage("assets/images/Success Illustration.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 390, left: 120),
                  child: Text(
                    "Congrats!",
                    style: TextStyle(
                      color: Color(0xFF53E88B),
                      fontFamily: "Merriweather-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 435, left: 75),
                  child: Text(
                    "Your Profile Is Ready To Use",
                    style: TextStyle(
                      color: Colors.white,
                      //fontFamily: "Nunito-Regular",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60, top: 260),
              child: ButtonCommon(
                text: "Next",
                width: 157,
                height: 57,
                color: Color(0xFF53E88B),
                Style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
