import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/message_common_container.dart';
import 'package:food_ninja_app/pinal/chat_details_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
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
                            color: const Color(0xFF252525),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 110),
                      child: Text(
                        "Chat",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Merriweather-Bold",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 150, right: 25),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChatDetailsScreen(),
                            ),
                          );
                        },
                        child: const MessageCommonContainer(
                          image: "assets/images/Photo Profile.png",
                          text: "Anamwp",
                          countText: "Your Order Just Arrived!",
                          secondText: "                20:00",
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20, right: 25),
                  child: MessageCommonContainer(
                    image: "assets/images/Photo Profile_2.png",
                    text: "Guy Hawkins",
                    countText: "Your Order Just Arrived!",
                    secondText: "       20:00",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20, right: 25),
                  child: MessageCommonContainer(
                    image: "assets/images/Photo Profile_3.png",
                    text: "Leslie Alexander",
                    countText: "Your Order Just Arrived!",
                    secondText: "20:00",
                  ),
                ),
              ],
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   showSelectedLabels: false,
        //   type: BottomNavigationBarType.shifting,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: GestureDetector(
        //           onTap: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => HomeScreen(),
        //                 ));
        //           },
        //           child: Image(
        //             image: AssetImage("assets/images/Icon Home Active.png"),
        //           ),
        //         ),
        //         label: "Home",
        //         backgroundColor: Colors.black),
        //     BottomNavigationBarItem(
        //         icon: GestureDetector(
        //           onTap: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => ProfileScreen(),
        //                 ));
        //           },
        //           child: Image(
        //             image: AssetImage("assets/images/Icon Profile.png"),
        //           ),
        //         ),
        //         label: "Home",
        //         backgroundColor: Colors.black),
        //     BottomNavigationBarItem(
        //         icon: GestureDetector(
        //           onTap: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => Container(color: Colors.pink),
        //                 ));
        //           },
        //           child: Image(
        //             image: AssetImage("assets/images/Icon Cart_1.png"),
        //           ),
        //         ),
        //         label: "Home",
        //         backgroundColor: Colors.black),
        //     BottomNavigationBarItem(
        //         icon: Stack(
        //           children: const [
        //             Image(
        //               image: AssetImage("assets/images/Chat.png"),
        //             ),
        //             Padding(
        //               padding: EdgeInsets.only(left: 16),
        //               child: Image(
        //                 image: AssetImage("assets/images/Ellipse 164_1.png"),
        //               ),
        //             ),
        //           ],
        //         ),
        //         label: "Home",
        //         backgroundColor: Colors.black),
        //   ],
        // ),
      ),
    );
  }
}
