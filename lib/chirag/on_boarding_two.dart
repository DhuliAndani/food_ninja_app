import 'package:flutter/material.dart';

import '../common/button_common.dart';

class OnBoardingTwo extends StatefulWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  State<OnBoardingTwo> createState() => _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0D0D),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/Illustartion.png'),
          SizedBox(
            height: 40,
          ),
          Text(
            'Find your  Comfort \n \t\t\t\t\t\t\tFood here',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Here You Can find a chef or dish for every \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t taste and color. Enjoy!',
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
