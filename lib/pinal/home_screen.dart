import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/Common/home_food.dart';

import 'Common/explore_menu_common_container.dart';
import 'Common/home_common.dart';
import 'Filter_screen.dart';
import 'explore_menu_screen.dart';
import 'explore_restaurant_screen.dart';
import 'message_screen.dart';
import 'voucher_promo_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VoucherPromoScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25, top: 20, right: 25),
                    child: Image(
                      image: AssetImage("assets/images/Promo Advertising.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ExploreRestaurantScreen()));
                      },
                      child: Text(
                        "View More",
                        style: TextStyle(
                          color: Color(0xFFFF8E4C),
                          fontSize: 12,
                          fontFamily: "Roboto-Regular",
                        ),
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
                          image: "assets/images/Resturant_Image.png",
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
                  children: [
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExploreMenuScreen()));
                      },
                      child: Text(
                        "View More",
                        style: TextStyle(
                          color: Color(0xFFFF8E4C),
                          fontSize: 12,
                          fontFamily: "Roboto-Regular",
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20, right: 25),
                  child: ExploreMenuCommonContainer(
                    image: "assets/images/Photo Menu.png",
                    text: "Good Food",
                    countText: "Noodle Home",
                    SecondText: "\$15",
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
              Image(
                image: AssetImage("assets/images/Icon Home Active.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FilterScreen()));
                },
                child: Image(
                  image: AssetImage("assets/images/Icon Profile.png"),
                ),
              ),
              Image(
                image: AssetImage("assets/images/Icon Cart_1.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MessageScreen()));
                },
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Chat.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Image(
                        image: AssetImage("assets/images/Ellipse 164_2.png"),
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
