import 'package:flutter/material.dart';

import '../common/button_common.dart';
import '../pinal/call_ringing_screen.dart';
import '../pinal/explore_menu_screen.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage("assets/images/Map_Set_Track.png"),
              ),
              Image.asset(
                "assets/images/Back_Arrow_Logo.png",
                width: 150,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 178),
                child: Image.asset(
                  "assets/images/Car_Track.png",
                  height: 432,
                  width: 96,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 83, left: 175),
                child: Image.asset(
                  "assets/images/Time_Tracking.png",
                  height: 150,
                  width: 160,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 540, left: 15, right: 15),
                child: Container(
                  height: 240,
                  // width: 342,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF0D0D0D),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/Map_Track_Pattern.png",
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Track Orders",
                          style: TextStyle(
                            fontFamily: "BentonSans",
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 50),
                        child: Container(
                          height: 87,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFF252525)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/Profile_Order.png",
                                height: 64,
                                width: 64,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Mr Kemplas",
                                    style: TextStyle(
                                      fontFamily: "BentonSans",
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/Icon_maps.png",
                                        height: 12,
                                        width: 12,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "25 minutes on the way",
                                        style: TextStyle(
                                          fontFamily: "BentonSans",
                                          fontSize: 14,
                                          color:
                                              Color.fromARGB(60, 255, 255, 255),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 155),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CallRingingScreen(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            textStyle: MaterialStateProperty.all(const TextStyle(
                              color: Color(0xFFFEFEFF),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Merriweather-Bold",
                            )),
                            shape: MaterialStateProperty.all(
                                ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                            overlayColor:
                                const MaterialStatePropertyAll(Color(0xFF53E88B)),
                            backgroundColor: const MaterialStatePropertyAll(Color((0xFF53E88B))),
                            fixedSize: MaterialStateProperty.all(
                              const Size(240, 68),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 70),
                            child: Row(
                              children: [
                                Image.asset(
                                      "assets/images/Call_logo.png",
                                      height: 18,
                                      width: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Call",
                                      style: TextStyle(
                                        fontFamily: "BentonSans",
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              ],
                            ),
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 257, top: 155),
                        child: Container(
                          height: 68,
                          width: 68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF252525),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: const Color(0xFF53E88B),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                  "assets/images/Down_Arrow_Ios.png",
                                ),
                              ),
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
