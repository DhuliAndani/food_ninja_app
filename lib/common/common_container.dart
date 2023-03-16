import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/home_common.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/Pattern.png"),
          scale: 1,
          alignment: Alignment.topRight,
        ),
      ),
      child: const HomeCommon(
        Secondimage: "assets/images/Icon Notifiaction_3.png",
        text: "Find Your\nFavorite Food",
        thirdimage: "assets/images/Icon Search.png",
        SecondText: "    What do you want to order?",
        forthimage: "assets/images/Filter.png",
        color: Color(0xFF2C2C2E),
        SecondColor: Color(0xFF2C2C2E),
      ),
    );
  }
}
