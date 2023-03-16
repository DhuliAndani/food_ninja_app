import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/button_common.dart';
import 'package:food_ninja_app/common/common_container.dart';
import 'package:food_ninja_app/common/filter_common_container.dart';
import 'package:food_ninja_app/pinal/explore_menu_screen.dart';
import 'package:food_ninja_app/pinal/explore_menu_with_filter_screen.dart';
import 'package:food_ninja_app/pinal/explore_restaurant_with_filter_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const CommonContainer(),
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
                    padding:
                        const EdgeInsets.only(left: 25, top: 163, right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 300,
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
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Type",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Merri weather-Bold",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Row(
                  children: const [
                    FilterCommonContainer(
                      height: 44,
                      width: 108,
                      text: "Restaurant",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: FilterCommonContainer(
                        height: 44,
                        width: 78,
                        text: "Menu",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ExploreRestaurantWithFilterScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Merri weather-Bold",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Row(
                  children: const [
                    FilterCommonContainer(
                      height: 44,
                      width: 70,
                      text: "1 Km",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: FilterCommonContainer(
                        height: 44,
                        width: 86,
                        text: ">10 Km",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: FilterCommonContainer(
                        height: 44,
                        width: 86,
                        text: "<10 Km",
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Food",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Merri weather-Bold",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Row(
                  children: [
                    FilterCommonContainer(
                      height: 44,
                      width: 70,
                      text: "Cake",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ExploreMenuWithFilterScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: FilterCommonContainer(
                          height: 44,
                          width: 71,
                          text: "Soup",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: FilterCommonContainer(
                        height: 44,
                        width: 120,
                        text: "Main Course",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Row(
                  children: const [
                    FilterCommonContainer(
                      height: 44,
                      width: 98,
                      text: "Appetizer",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: FilterCommonContainer(
                        height: 44,
                        width: 87,
                        text: "Dessert",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 125, right: 25),
                child: ButtonCommon(
                  text: "Search",
                  width: 325,
                  height: 57,
                  color: const Color(0xFF53E88B),
                  Style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ExploreMenuScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
