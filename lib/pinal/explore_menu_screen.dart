import 'package:flutter/material.dart';

import 'Common/explore_menu_common_container.dart';
import 'Common/home_common.dart';
import 'Common/home_common_nevigation.dart';

class ExploreMenuScreen extends StatefulWidget {
  const ExploreMenuScreen({Key? key}) : super(key: key);

  @override
  State<ExploreMenuScreen> createState() => _ExploreMenuScreenState();
}

class _ExploreMenuScreenState extends State<ExploreMenuScreen> {
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
        backgroundColor: Colors.black,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeCommon(
                  //  image: "assets/images/Pattern.png",
                  Secondimage: "assets/images/Icon Notifiaction_3.png",
                  text: "Find Your\nFavorite Food",
                  thirdimage: "assets/images/Icon Search.png",
                  SecondText: "    What do you want to order?",
                  forthimage: "assets/images/Filter.png",
                  color: Color(0x33F9A84D),
                  SecondColor: Color(0x33F9A84D),
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
          child: HomeCommonNevigation(
            image: "assets/images/Icon Home Active.png",
            Secondimage: "assets/images/Icon Profile.png",
            thirdimage: "assets/images/Icon Cart_2.png",
            forthimage: "assets/images/Chat.png",
            fiveimage: "assets/images/Ellipse 164_1.png",
          ),
        ),
      ),
    );
  }
}
