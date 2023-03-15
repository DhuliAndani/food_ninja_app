import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/voucher_promo_screen.dart';

import 'Common/finish_order_common.dart';
import 'Common/finish_order_common_container.dart';

class RateRestaurantScreen extends StatefulWidget {
  const RateRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<RateRestaurantScreen> createState() => _RateRestaurantScreenState();
}

class _RateRestaurantScreenState extends State<RateRestaurantScreen> {
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
                    image: AssetImage("assets/images/Image_3.png"),
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
                  padding: EdgeInsets.only(top: 480, left: 105),
                  child: Text(
                    "Please rate your Restaurant",
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
                              builder: (context) => const VoucherPromoScreen(),
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
