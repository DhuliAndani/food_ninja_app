import 'package:flutter/material.dart';
import 'package:food_ninja_app/dhruvit/payments_screen.dart';

import '../common/button_common.dart';
import '../pinal/explore_menu_screen.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({super.key});

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage("assets/images/Map_Set.png"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(41, 255, 255, 255),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      SizedBox(width: 3),
                      Image(
                        image: AssetImage("assets/images/search_logo.png"),
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        "Find Your Location",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 12,
                          color: Color(0xFFF2F6F8),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 110),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 210),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/Pin_Radar.png"),
                    height: 216,
                    width: 216,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600, left: 15, right: 15),
                child: Container(
                  height: 181,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF0D0D0D),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Your Location",
                            style: TextStyle(
                              fontFamily: "BentonSans",
                              fontSize: 14,
                              color: Color.fromARGB(126, 236, 235, 235),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 170),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Image(
                            image:
                                AssetImage("assets/images/Icon_Location.png"),
                            height: 33,
                            width: 33,
                          ),
                          Text(
                            "4517 Washington Ave. Manchester,\n\nKentucky 39495",
                            style: TextStyle(
                              fontFamily: "BentonSans",
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 57,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF53E88B),
                          ),
                          child: ButtonCommon(
                            color: const Color(0xFF53E88B),
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ExploreMenuScreen(),
                                ),
                              );
                            },
                            text: "Set Location",
                            width: 325,
                            height: 57,
                            
                            style: const TextStyle(
                              fontFamily: "BentonSans",
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
