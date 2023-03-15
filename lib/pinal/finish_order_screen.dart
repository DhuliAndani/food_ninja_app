import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/rate_food_screen.dart';

import 'Common/finish_order_common.dart';
import 'Common/finish_order_common_container.dart';

class FinishOrderScreen extends StatefulWidget {
  const FinishOrderScreen({Key? key}) : super(key: key);

  @override
  State<FinishOrderScreen> createState() => _FinishOrderScreenState();
}

class _FinishOrderScreenState extends State<FinishOrderScreen> {
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
                const Image(
                  image: AssetImage("assets/images/green.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 190, left: 100),
                  child: Image(
                    image: AssetImage("assets/images/Image_1.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 390, left: 125),
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
                  padding: EdgeInsets.only(top: 425, left: 90),
                  child: Text(
                    "Order Completed",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Merriweather-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 470, left: 105),
                  child: Text(
                    "Please rate your last Driver",
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
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(TextStyle(
                            color: Color(0xFFFEFEFF),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Merriweather-Bold",
                          )),
                          shape: MaterialStateProperty.all(
                              ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                          overlayColor:
                              MaterialStatePropertyAll(Color(0xFF53E88B)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF53E88B)),
                          fixedSize: MaterialStateProperty.all(
                            Size(228, 57),
                          ),
                        ),
                        child: Text("Submit"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RateFoodScreen(),
                            ),
                          );
                        },
                        child: FinishOrderCommon(
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
