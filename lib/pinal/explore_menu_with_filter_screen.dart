import 'package:flutter/material.dart';

import 'Common/explore_menu_common_container.dart';
import 'Common/home_search.dart';

class ExploreMenuWithFilterScreen extends StatefulWidget {
  const ExploreMenuWithFilterScreen({Key? key}) : super(key: key);

  @override
  State<ExploreMenuWithFilterScreen> createState() =>
      _ExploreMenuWithFilterScreenState();
}

class _ExploreMenuWithFilterScreenState
    extends State<ExploreMenuWithFilterScreen> {
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
                        HomeSearch(
                          image: "assets/images/Icon Search.png",
                          text: "    What do you want to order?",
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
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Container(
                  height: 44,
                  width: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF2C2C2E),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Soup ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Merriweather-Bold",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage("assets/images/Icon Close.png"),
                      ),
                    ],
                  ),
                ),
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
                image: AssetImage("assets/images/Icon Cart_2.png"),
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
