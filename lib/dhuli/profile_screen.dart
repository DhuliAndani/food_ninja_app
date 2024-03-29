import 'package:flutter/material.dart';

import '../common/pratice_common.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenScreenState();
}

class _ProfileScreenScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Profile_Photo.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 295),
            child: Container(
              height: double.infinity,
              clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 58,
                    decoration: BoxDecoration(
                      color: const Color(0xFF252525),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 1),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            decoration: const BoxDecoration(
                              color: Color(0xFF3A2B11),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: const Text(
                              "Member Gold",
                              style: TextStyle(
                                color: Color(0xFFFEAD1D),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Anam Wusono",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "BentonSans",
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "anamwp66@gmail.com",
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 16,
                                      //fontFamily: "BentonSans",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                "assets/images/Edit_Icon.png",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),

                          ///
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: const BoxDecoration(
                              color: Color(0xFF252525),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/Voucher_Icon.png",
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  " You Have 3 Voucher",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "BentonSans",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Favorite",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const PraticeCommon(
                            image: "assets/images/P_Menu Photo.png",
                            text: "Spacy fresh crab",
                            countText: "Waroenk kita",
                            ThirdText: "Buy Again",
                            SecondText: "\$ 35",
                          ),
                          const SizedBox(height: 15),
                          const PraticeCommon(
                            image: "assets/images/Photo_Menu.png",
                            text: "Spacy fresh crab",
                            countText: "Waroenk kita",
                            ThirdText: "Buy Again",
                            SecondText: "\$ 35",
                          ),
                          const SizedBox(height: 15),
                          const PraticeCommon(
                            image: "assets/images/ice_cream.png",
                            text: "Spacy fresh crab",
                            countText: "Waroenk kita",
                            ThirdText: "Buy Again",
                            SecondText: "\$ 35",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
