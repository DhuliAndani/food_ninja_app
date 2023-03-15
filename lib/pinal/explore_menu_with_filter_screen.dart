import 'package:flutter/material.dart';

import 'Common/explore_menu_common_container.dart';
import 'Common/home_common.dart';

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
    return Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/Pattern.png"),
            scale: 1,
            alignment: Alignment.topRight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const HomeCommon(
                      //  image: "assets/images/Pattern.png",
                      Secondimage: "assets/images/Icon Notifiaction_3.png",
                      text: "Find Your\nFavorite Food",
                      thirdimage: "assets/images/Icon Search.png",
                      SecondText: "    What do you want to order?",
                      forthimage: "assets/images/Filter.png",
                      color: Color(0xFF2C2C2E),
                      SecondColor: Color(0xFF2C2C2E),
                    ),
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
        ));
  }
}
