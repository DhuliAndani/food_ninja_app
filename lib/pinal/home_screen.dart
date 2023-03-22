import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/common_container.dart';
import 'package:food_ninja_app/common/explore_menu_common_container.dart';
import 'package:food_ninja_app/common/home_food.dart';
import 'package:food_ninja_app/dhruvit/detail_product_screen.dart';
import 'package:food_ninja_app/dhuli/profile_screen.dart';
import 'package:food_ninja_app/pinal/message_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> screens = [
    HomeScreen(),
    ProfileScreen(),
    Container(color: Colors.pink),
    MessageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const CommonContainer(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
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
                //
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
                              builder: (context) => DetailProductScreen(),
                            ));
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        items: [
          const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/Icon Home Active.png"),
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
                    ),
                  );
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
                    ),
                  );
                },
                child: Image(
                  image: AssetImage("assets/images/Icon Cart_1.png"),
                ),
              ),
              //
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessageScreen(),
                    ),
                  );
                },
                child: Stack(
                  children: const [
                    Image(
                      image: AssetImage("assets/images/Chat.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Image(
                        image: AssetImage("assets/images/Ellipse 164_2.png"),
                      ),
                    ),
                  ],
                ),
              ),
              label: "Home",
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
