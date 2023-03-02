import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/Common/home_food.dart';

import 'Common/home_search.dart';

class ExploreRestaurantScreen extends StatefulWidget {
  const ExploreRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<ExploreRestaurantScreen> createState() => _ExploreRestaurantState();
}

class _ExploreRestaurantState extends State<ExploreRestaurantScreen> {
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
                            "assets/images/Icon Notifiaction.png",
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
                        const HomeSearch(
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
                      image: "assets/images/Resturant Image.png",
                      text: "\nVegan Resto",
                      countText: "12 mins",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: HomeFood(
                        height: 200,
                        width: 150,
                        image: "assets/images/Restaurant Image_2.png",
                        text: "\n\nHealthy Food",
                        countText: "8 mins",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Row(
                  children: [
                    HomeFood(
                      height: 200,
                      width: 150,
                      image: "assets/images/Restaurant.png",
                      text: "\n\nGood Food",
                      countText: "12 mins",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: HomeFood(
                        countText: "8 mins",
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
                      countText: "12 mins",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: HomeFood(
                        height: 200,
                        width: 150,
                        countText: "8 mins",
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
