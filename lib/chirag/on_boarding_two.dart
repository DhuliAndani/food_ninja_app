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
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/Illustartion.png'),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Find your  Comfort \n \t\t\t\t\t\t\tFood here',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Here You Can find a chef or dish for every \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t taste and color. Enjoy!',
            style: TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
          ),
          const SizedBox(
            height: 60,
          ),
          const ButtinCommon(),
        ],
      )),
    );
  }
}
