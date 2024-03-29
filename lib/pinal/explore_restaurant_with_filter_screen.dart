import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/common_container.dart';
import 'package:food_ninja_app/common/home_food.dart';

class ExploreRestaurantWithFilterScreen extends StatefulWidget {
  const ExploreRestaurantWithFilterScreen({Key? key}) : super(key: key);

  @override
  State<ExploreRestaurantWithFilterScreen> createState() =>
      _ExploreRestaurantWithFilterScreenState();
}

class _ExploreRestaurantWithFilterScreenState
    extends State<ExploreRestaurantWithFilterScreen> {
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
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Container(
                        height: 44,
                        width: 112,
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
                              ">10 Km ",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
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
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Popular Restaurant",
                    style: TextStyle(
                      fontSize: 16,
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
                      HomeFood(
                        height: 200,
                        width: 150,
                        image: "assets/images/Resturant_Image.png",
                        text: "\nVegan Resto",
                        countText: "12 Mins",
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: HomeFood(
                          height: 200,
                          width: 150,
                          image: "assets/images/Restaurant Image_2.png",
                          text: "\n\nHealthy Food",
                          countText: "8 Mins",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: Row(
                    children: const [
                      HomeFood(
                        height: 200,
                        width: 150,
                        image: "assets/images/Restaurant.png",
                        text: "\n\nGood Food",
                        countText: "12 Mins",
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: HomeFood(
                          countText: "8 Mins",
                          width: 150,
                          height: 200,
                          image: "assets/images/Restaurant Image_4.png",
                          text: "\n\nSmart Resto",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: Row(
                    children: const [
                      HomeFood(
                        height: 200,
                        width: 150,
                        image: "assets/images/Restaurant Image_5.png",
                        text: "\nVegan Resto",
                        countText: "12 Mins",
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: HomeFood(
                          height: 200,
                          width: 150,
                          countText: "8 Mins",
                          image: "assets/images/Restaurant Image_6.png",
                          text: "\nHealthy Food",
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
    );
  }
}
