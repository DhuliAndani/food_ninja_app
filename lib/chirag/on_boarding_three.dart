import 'package:flutter/material.dart';

import '../common/button_common.dart';

class OnBoardingThree extends StatefulWidget {
  const OnBoardingThree({Key? key}) : super(key: key);

  @override
  State<OnBoardingThree> createState() => _OnBoardingThreeState();
}

class _OnBoardingThreeState extends State<OnBoardingThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0D0D),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Image.asset('assets/images/twoIllustration.png'),
          SizedBox(
            height: 40,
          ),
          Text(
            'Food Ninja is Where Your \n \t\t\t Comfort Food Lives',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Enjoy a fast and smooth food delivery at \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t your doorstep',
            style: TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
          ),
          SizedBox(
            height: 60,
          ),
          ButtinCommon(),
        ],
      )),
    );
  }
}
