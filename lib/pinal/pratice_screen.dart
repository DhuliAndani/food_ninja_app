import 'package:flutter/material.dart';

import 'Common/common_two.dart';
import 'Common/pratice_common.dart';

class PraticeScreen extends StatefulWidget {
  const PraticeScreen({Key? key}) : super(key: key);

  @override
  State<PraticeScreen> createState() => _PraticeScreenState();
}

class _PraticeScreenState extends State<PraticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const Image(
                    image: AssetImage("assets/images/Pattern.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 268, top: 69),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0x1AF4F4F4),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/Icon Notifiaction_3.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, top: 60),
                    child: Text(
                      "Find Your\nFavorite Food",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Merriweather-Bold",
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 163),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 260,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2C2C2E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Image(
                                image:
                                    AssetImage("assets/images/Icon Search.png"),
                              ),
                              Text(
                                "    What do you want to order?",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontFamily: "Roboto-Regular",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2C2C2E),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/Filter.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 15, right: 25),
                child: PraticeCommon(
                  image: "assets/images/P_Menu Photo.png",
                  text: "Spacy fresh crab",
                  countText: "Waroenk kita",
                  SecondText: "\$ 35",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 15, right: 25),
                child: PraticeCommon(
                  image: "assets/images/Photo Menu.png",
                  text: "Spacy fresh crab",
                  countText: "Waroenk kita",
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
                    left: 25, right: 25, top: 15, bottom: 20),
                child: Container(
                  height: 57,
                  width: 325,
                  decoration: BoxDecoration(
                    color: const Color(0xFF53E88B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Check out",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Merriweather-Bold"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
