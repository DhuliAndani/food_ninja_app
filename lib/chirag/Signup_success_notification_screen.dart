import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/button_common.dart';

import '../dhruvit/edit_location_screen.dart';

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
        body: Column(children: [
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
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 260),
            child: ButtonCommon(
              text: "Try Order",
              width: 157,
              height: 57,
              color: const Color(0xFF53E88B),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "Merriweather-Bold",
              ),
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditLocationScreen(),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
