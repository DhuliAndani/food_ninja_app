import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/button_common.dart';
import 'package:food_ninja_app/common/finish_order_common.dart';
import 'package:food_ninja_app/common/finish_order_common_container.dart';

import 'rate_restaurant_screen.dart';

class RateFoodScreen extends StatefulWidget {
  const RateFoodScreen({Key? key}) : super(key: key);

  @override
  State<RateFoodScreen> createState() => _RateFoodScreenState();
}

class _RateFoodScreenState extends State<RateFoodScreen> {
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
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 190, left: 80),
                  child: Image(
                    image: AssetImage("assets/images/Image_2.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 400, left: 125),
                  child: Text(
                    "Thank You!",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Merriweather-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 435, left: 100),
                  child: Text(
                    "Enjoy Your Meal",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Merriweather-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 480, left: 115),
                  child: Text(
                    "Please rate your Food",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Rubik-Regular",
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 520),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Star_1.png"),
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset("assets/images/Star_2.png"),
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset("assets/images/Star_3.png"),
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset("assets/images/Star_4.png"),
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset("assets/images/Star_5.png"),
                      const SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 650),
                  child: FinishOrderCommonContainer(
                    image: "assets/images/edit Icon.png",
                    text: "Leave feedback",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 730, right: 20),
                  child: Row(
                    children: [
                      const ButtonCommon(
                        text: "Submit",
                        width: 228,
                        height: 57,
                        color: Color(0xFF53E88B),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RateRestaurantScreen()));
                        },
                        child: const FinishOrderCommon(
                          height: 57,
                          width: 82,
                          color: Color(0xFF252525),
                          text: "Skip",
                          SecondColor: Color(0xFF53E88B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
