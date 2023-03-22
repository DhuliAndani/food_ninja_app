import 'package:flutter/material.dart';

import '../dhuli/profile_screen.dart';
import 'home_screen.dart';
import 'message_screen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int index = 0;
  List<Widget> screenList = [
    const HomeScreen(),
    const ProfileScreen(),
    Container(color: Colors.pink),
    const MessageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      type: BottomNavigationBarType.shifting,
      items: [
        const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/Icon Home Active.png"),
            ),
            label: "Home",
            backgroundColor: Colors.black),
        const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/Icon Profile.png"),
            ),
            label: "Home",
            backgroundColor: Colors.black),
        const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/Icon Cart_1.png"),
            ),
            label: "Home",
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Stack(
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
            label: "Home",
            backgroundColor: Colors.black),
      ],
    );
  }
}
