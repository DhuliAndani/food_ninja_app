import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/Common/home_food.dart';

import 'Common/home_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
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
                          text: "    What do you want to order?",
                          image: "assets/images/Icon Search.png",
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
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 20, right: 25),
                child: Image(
                  image: AssetImage("assets/images/Promo Advertising.png"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Nearest Restaurant",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Merriweather-Bold",
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Color(0xFFFF8E4C),
                      fontSize: 12,
                      fontFamily: "Roboto-Regular",
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 15),
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
                        padding: EdgeInsets.only(left: 20, top: 5),
                        child: HomeFood(
                          height: 200,
                          width: 150,
                          image: "assets/images/Restaurant Image_2.png",
                          text: "\nHealthy Food",
                          countText: "8 mins",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: HomeFood(
                          height: 200,
                          width: 150,
                          image: "assets/images/Restaurant Image_3.png",
                          text: "\nGood Food",
                          countText: "12 mins",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 27,
                  ),
                  Text(
                    "Popular Menu",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Merriweather-Bold",
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Color(0xFFFF8E4C),
                      fontSize: 12,
                      fontFamily: "Roboto-Regular",
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
                child: Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0D0D0D),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Image(
                        image: AssetImage("assets/images/Photo Menu.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Good Food",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Merriweather-Bold",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Noodle Home",
                            style: TextStyle(
                              color: Color(0xFF3B3B3B),
                              fontFamily: "Roboto-Regular",
                              //fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Text(
                        "\$15",
                        style:
                            TextStyle(color: Color(0xFFFEB536), fontSize: 22),
                      )
                    ],
                  ),
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
                image: AssetImage("assets/images/Icon Cart.png"),
              ),
              Stack(
                children: const [
                  Image(
                    image: AssetImage("assets/images/Chat.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Image(
                      image: AssetImage("assets/images/Ellipse 164.png"),
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
