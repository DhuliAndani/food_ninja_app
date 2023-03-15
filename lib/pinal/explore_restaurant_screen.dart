import 'package:flutter/material.dart';

import 'Common/home_common.dart';
import 'Common/home_food.dart';

class ExploreRestaurantScreen extends StatefulWidget {
  const ExploreRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<ExploreRestaurantScreen> createState() => _ExploreRestaurantState();
}

class _ExploreRestaurantState extends State<ExploreRestaurantScreen> {
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
                const HomeCommon(
                  Secondimage: "assets/images/Icon Notifiaction_3.png",
                  text: "Find Your\nFavorite Food",
                  thirdimage: "assets/images/Icon Search.png",
                  SecondText: "    What do you want to order?",
                  forthimage: "assets/images/Filter.png",
                  color: Color(0xFF2C2C2E),
                  SecondColor: Color(0xFF2C2C2E),
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
          ],
        ),
      ),
    );
  }
}
