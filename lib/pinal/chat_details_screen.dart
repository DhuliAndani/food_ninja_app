import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/call_ringing_screen.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/green.png"),
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
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 40),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x99252525),
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/Vector_arrow.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                        top: 147,
                      ),
                      child: Container(
                        height: 93,
                        width: 347,
                        decoration: BoxDecoration(
                          color: const Color(0x1AF4F4F4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Image(
                              image:
                                  AssetImage("assets/images/Photo Profile.png"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 25,
                                ),
                                const Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Merriweather-Bold",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 6,
                                      width: 6,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF53E88B),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "Online",
                                      style: TextStyle(
                                        color: Color(0x4DF6F6F6),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Roboto-Regular",
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CallRingingScreen(),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color(0x1AF6F6F6),
                                        borderRadius: BorderRadius.circular(30),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Call logo.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 270),
                      child: Container(
                        height: 41,
                        width: 129,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0x1AFFFFFF),
                        ),
                        child: Center(
                          child: Text(
                            "    Just to order",
                            style: TextStyle(
                              color: Color(0x4DFFFFFF),
                              fontSize: 14,
                              fontFamily: "Nunito-Regular",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 70, top: 340, right: 25),
                      child: Container(
                        height: 41,
                        width: 265,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF53E88B),
                        ),
                        child: Center(
                          child: Text(
                            "    Okay, for what level of spiciness?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Nunito-Regular",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 410),
                      child: Container(
                        height: 41,
                        width: 185,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0x1AFFFFFF),
                        ),
                        child: Center(
                          child: Text(
                            "    Okay, wait a minute 👍",
                            style: TextStyle(
                              color: Color(0x4DFFFFFF),
                              fontSize: 14,
                              fontFamily: "Nunito-Regular",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 160, top: 480, right: 25),
                      child: Container(
                        height: 40,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF53E88B),
                        ),
                        child: Center(
                          child: Text(
                            "    Okay I'm waiting  👍",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Nunito-Regular",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 74,
            width: 355,
            decoration: BoxDecoration(
              color: const Color(0xFF252525),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "       Okay I'm waiting  👍",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xCCFFFFFF),
                    fontWeight: FontWeight.normal,
                    fontFamily: "Rubik-Regular",
                  ),
                ),
                SizedBox(width: 150),
                Image(
                  image: AssetImage("assets/images/Icon Send.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
