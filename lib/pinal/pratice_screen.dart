import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/common_container.dart';
import 'package:food_ninja_app/common/common_two.dart';
import 'package:food_ninja_app/common/pratice_common.dart';
import 'package:food_ninja_app/dhruvit/order_details_screen.dart';

class PraticeScreen extends StatefulWidget {
  const PraticeScreen({Key? key}) : super(key: key);

  @override
  State<PraticeScreen> createState() => _PraticeScreenState();
}

class _PraticeScreenState extends State<PraticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const CommonContainer(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 15, right: 25),
                  child: PraticeCommon(
                    image: "assets/images/P_Menu Photo.png",
                    text: "Spacy fresh crab",
                    countText: "Waroenk kita",
                    ThirdText: "Proccess",
                    SecondText: "\$ 35",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 15, right: 25),
                  child: PraticeCommon(
                    image: "assets/images/Photo Menu.png",
                    text: "Spacy fresh crab",
                    countText: "Waroenk kita",
                    ThirdText: "Proccess",
                    SecondText: "\$ 35",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 15, right: 25),
                  child: CommonTwo(
                    image: "assets/images/p_Menu Photo_2.png",
                    text: "Spacy fresh crab",
                    countText: "Waroenk kita",
                    SecondText: "\$ 35",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20, right: 25),
                  child: CommonTwo(
                    image: "assets/images/p_Menu Photo_3.png",
                    text: "Spacy fresh crab",
                    countText: "Waroenk kita",
                    SecondText: "\$ 35",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 15, bottom: 20),
                  child: Container(
                    height: 57,
                    width: 325,
                    decoration: BoxDecoration(
                      color: const Color(0xFF53E88B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53E88B),
                      ),
                      child: const Center(
                        child: Text(
                          "Place My Order",
                          style: TextStyle(
                            fontFamily: "BentonSans",
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderDetailsScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
