import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Photo_Restaurant.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 295),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 5,
                      width: 58,
                      decoration: BoxDecoration(
                        color: const Color(0xFF252525),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 34,
                                width: 76,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(52, 83, 232, 140),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Popular",
                                    style: TextStyle(
                                      fontFamily: "BentonSans",
                                      fontSize: 12,
                                      color: Color(0xFF53E88B),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              Image.asset(
                                "assets/images/Icons_Location.png",
                                width: 34,
                                height: 34,
                              ),
                              Image.asset(
                                "assets/images/Icon_Love.png",
                                width: 34,
                                height: 34,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 25, right: 35),
                            child: Text(
                              "Wijie Bar and Resto",
                              style: TextStyle(
                                fontFamily: "BentonSans",
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  width: 1,
                                ),
                                Image.asset(
                                  "assets/images/Icon_map_pin.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const Text(
                                  "19 Km",
                                  style: TextStyle(
                                    fontFamily: "BentonSans",
                                    fontSize: 14,
                                    color: Color.fromARGB(76, 255, 255, 255),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Image.asset(
                                  "assets/images/Icon_Star.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const Text(
                                  "4.8 Rating",
                                  style: TextStyle(
                                    fontFamily: "BentonSans",
                                    fontSize: 14,
                                    color: Color.fromARGB(83, 255, 255, 255),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 120,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: Text(
                              "Most whole Alaskan Red King Crabs get broken down\n\ninto legs, claws, and lump meat. We offer all of these\n\noptions as well in our online shop, but there is nothing\n\nlike getting the whole....",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: "BentonSans",
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Popular Menu",
                                  style: TextStyle(
                                    fontFamily: "BentonSans",
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Text(
                                  "View All",
                                  style: TextStyle(
                                    fontFamily: "BentonSans",
                                    fontSize: 12,
                                    color: Color(0xFFFF7C32),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 171,
                                    width: 147,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xFF252525),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "assets/images/Pizza_Cut.png",
                                          width: 71,
                                          height: 71,
                                        ),
                                        const Text(
                                          "Spacy fresh crab",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Text(
                                          "12 \$",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                85, 255, 255, 255),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 171,
                                    width: 147,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xFF252525),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "assets/images/Dog_Haddi.png",
                                          width: 71,
                                          height: 71,
                                        ),
                                        const Text(
                                          "Spacy fresh crab",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Text(
                                          "16 \$",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                85, 255, 255, 255),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 171,
                                    width: 147,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xFF252525),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "assets/images/Pizza_Cut.png",
                                          width: 71,
                                          height: 71,
                                        ),
                                        const Text(
                                          "Spacy fresh crab",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Text(
                                          "12 \$",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                85, 255, 255, 255),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, right: 220),
                            child: Text(
                              "Testimonials",
                              style: TextStyle(
                                fontFamily: "BentonSans",
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: 128,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFF252525),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/Photo_Profile_one.png",
                                      width: 64,
                                      height: 64,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Dianne Russell",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "12 April 2021",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 13,
                                            color:
                                                Color.fromARGB(195, 59, 59, 59),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          "This Is great, So delicious! You Must\n\nHere, With Your family..",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 9,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/Icon_Star_Five.png",
                                      width: 53,
                                      height: 33,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              height: 128,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFF252525),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/Photo_Profile_two.png",
                                      width: 64,
                                      height: 64,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Dianne Russell",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "12 April 2021",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 13,
                                            color:
                                                Color.fromARGB(195, 59, 59, 59),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          "This Is great, So delicious! You Must\n\nHere, With Your family..",
                                          style: TextStyle(
                                            fontFamily: "BentonSans",
                                            fontSize: 9,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/Icon_Star_Five.png",
                                      width: 53,
                                      height: 33,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
