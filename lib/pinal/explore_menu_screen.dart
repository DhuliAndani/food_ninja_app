import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/explore_menu_common_container.dart';
import 'package:food_ninja_app/common/home_common.dart';

import 'message_screen.dart';

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
        backgroundColor: Colors.transparent,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HomeCommon(
                  Secondimage: "assets/images/Icon Notifiaction_3.png",
                  text: "Find Your\nFavorite Food",
                  thirdimage: "assets/images/Icon Search.png",
                  SecondText: "    What do you want to order?",
                  forthimage: "assets/images/Filter.png",
                  color: Color(0x33F9A84D),
                  SecondColor: Color(0x33F9A84D),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
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
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: ExploreMenuCommonContainer(
                    image: "assets/images/Menu Photo.png",
                    text: "Herbal Pancake",
                    countText: "Warung Herbal",
                    SecondText: "\$7",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: ExploreMenuCommonContainer(
                    image: "assets/images/Photo.png",
                    text: "Fruit Salad",
                    countText: "Wijie Resto",
                    SecondText: "      \$5",
                  ),
                ),
                Padding(
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
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFF252525),
            borderRadius: BorderRadius.circular(10),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MessageScreen(),
                    ),
                  );
                },
                child: Stack(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
