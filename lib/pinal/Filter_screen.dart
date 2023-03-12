import 'package:flutter/material.dart';

import 'Common/filter_common_container.dart';
import 'explore_menu_with_filter_screen.dart';
import 'explore_restaurant_with_filter_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
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
          children: [
            BackButton(),
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
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Location",
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExploreRestaurantWithFilterScreen()));
                    },
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExploreMenuWithFilterScreen()));
                    },
                    child: Row(
                      children: const [
                        FilterCommonContainer(
                          height: 44,
                          width: 70,
                          text: "Cake",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: FilterCommonContainer(
                            height: 44,
                            width: 71,
                            text: "Soup",
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
                  child: ClipRRect(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(TextStyle(
                          color: Color(0xFFFEFEFF),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Merriweather-Bold",
                        )),
                        shape:
                            MaterialStateProperty.all(ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                        overlayColor:
                            MaterialStatePropertyAll(Color(0xFF53E88B)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF53E88B)),
                        fixedSize: MaterialStateProperty.all(
                          Size(325, 57),
                        ),
                      ),
                      child: Text("search"),
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
