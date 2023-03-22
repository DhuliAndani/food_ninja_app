import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/common_container.dart';
import 'package:food_ninja_app/common/explore_menu_common_container.dart';
import 'package:food_ninja_app/dhuli/profile_screen.dart';
import 'package:food_ninja_app/pinal/chat_details_screen.dart';
import 'package:food_ninja_app/pinal/home_screen.dart';

class ExploreMenuScreen extends StatefulWidget {
  const ExploreMenuScreen({Key? key}) : super(key: key);

  @override
  State<ExploreMenuScreen> createState() => _ExploreMenuScreenState();
}

class _ExploreMenuScreenState extends State<ExploreMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const CommonContainer(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
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
                  padding: EdgeInsets.only(left: 25, right: 25, top: 25),
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Image(
                  image: AssetImage("assets/images/Icon Home Active.png"),
                ),
              ),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                },
                child: Image(
                  image: AssetImage("assets/images/Icon Profile.png"),
                ),
              ),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Container(color: Colors.pink),
                      ));
                },
                child: Image(
                  image: AssetImage("assets/images/Icon Cart_1.png"),
                ),
              ),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatDetailsScreen(),
                      ));
                },
                child: const Image(
                  image: AssetImage("assets/images/Icon Chat Active_1.png"),
                ),
              ),
              label: "Home",
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
