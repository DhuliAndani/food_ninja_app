import 'package:flutter/material.dart';

import 'Common/explore_menu_common_container.dart';

class ExploreMenuScreen extends StatefulWidget {
  const ExploreMenuScreen({Key? key}) : super(key: key);

  @override
  State<ExploreMenuScreen> createState() => _ExploreMenuScreenState();
}

class _ExploreMenuScreenState extends State<ExploreMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            color: const Color(0x33F9A84D),
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
                            color: const Color(0x33F9A84D),
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Popular Menu",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Merri weather-Bold",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                child: ExploreMenuCommonContainer(
                  image: "assets/images/Menu Photo.png",
                  text: "Herbal Pancake",
                  countText: "Warung Herbal",
                  SecondText: "\$7",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                child: ExploreMenuCommonContainer(
                  image: "assets/images/Photo.png",
                  text: "Fruit Salad",
                  countText: "Wijie Resto",
                  SecondText: "      \$5",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                child: ExploreMenuCommonContainer(
                  image: "assets/images/Photo Menu.png",
                  text: "Green Noddle",
                  countText: "Noodle Home",
                  SecondText: "   \$15",
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFF252525),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage("assets/images/Icon Home Active.png"),
              ),
              const Image(
                image: AssetImage("assets/images/Icon Profile.png"),
              ),
              const Image(
                image: AssetImage("assets/images/Icon Cart_1.png"),
              ),
              Stack(
                children: const [
                  Image(
                    image: AssetImage("assets/images/Chat.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Image(
                      image: AssetImage("assets/images/Ellipse 164_1.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
