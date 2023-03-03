import 'package:flutter/material.dart';

import 'Common/message_common_container.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
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
                    padding: const EdgeInsets.only(left: 25, top: 40),
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
                  const Padding(
                    padding: EdgeInsets.only(left: 25, top: 150, right: 25),
                    child: MessageCommonContainer(
                      image: "assets/images/Photo Profile.png",
                      text: "Anamwp",
                      countText: "Your Order Just Arrived!",
                      secondText: "                20:00",
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
            children: const [
              Image(
                image: AssetImage("assets/images/Home_1.png"),
              ),
              Image(
                image: AssetImage("assets/images/Icon Profile.png"),
              ),
              Image(
                image: AssetImage("assets/images/Icon Cart_2.png"),
              ),
              Image(
                image: AssetImage("assets/images/Icon Chat Active_1.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
