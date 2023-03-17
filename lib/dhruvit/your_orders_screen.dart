import 'package:flutter/material.dart';
import '../common/common_two.dart';
import '../common/pratice_common.dart';
import 'order_details_screen.dart';

class YourOrdersScreen extends StatefulWidget {
  const YourOrdersScreen({Key? key}) : super(key: key);

  @override
  State<YourOrdersScreen> createState() => _YourOrdersScreenState();
}

class _YourOrdersScreenState extends State<YourOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: AssetImage("assets/images/Pattern.png"),
            scale: 1,
            alignment: Alignment.topRight),
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
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
                                  image: AssetImage(
                                      "assets/images/Icon Search.png"),
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
          ],
        ),
      ),
    );
  }
}
