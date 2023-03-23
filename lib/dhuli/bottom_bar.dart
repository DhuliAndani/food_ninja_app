import 'package:flutter/material.dart';
import 'package:food_ninja_app/dhuli/profile_screen.dart';
import 'package:food_ninja_app/pinal/home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../pinal/message_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  List<Widget> screenList = [
    const HomeScreen(),
    const ProfileScreen(),
    Container(),
    const MessageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndex],
      bottomNavigationBar: GNav(
          backgroundColor: const Color(0xFF252525),
          rippleColor: Colors.green.shade700,
          hoverColor: Colors.green.shade100,
          haptic: true,
          tabBorderRadius: 8,
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 100),
          gap: 0,
          tabBackgroundColor: const Color(0x2553E88C),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          tabs: [
            GButton(
              leading: Image.asset("assets/images/Icon_Home.png"),
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              leading: Image.asset("assets/images/Icon_Profil_Active.png"),
              icon: Icons.home,
              text: 'Likes',
            ),
            GButton(
              leading: Image.asset("assets/images/Icon_Home.png"),
              icon: Icons.home,
              text: 'Search',
            ),
            GButton(
              leading: Image.asset("assets/images/Icon_Home.png"),
              icon: Icons.home,
              text: 'Profile',
            )
          ]),

      // showSelectedLabels: false,
      // showUnselectedLabels: false,

      // selectedItemColor: Color(0xFF2D7D53),
      // //unselectedItemColor: const Color(0xFF505050),
      // currentIndex: currentIndex,
      // type: BottomNavigationBarType.fixed,
      // backgroundColor: const Color(0xFF252525),
      // items: const [
      //   BottomNavigationBarItem(
      //     icon: ImageIcon(
      //       size: 25,
      //       AssetImage(
      //         "assets/images/Icon_Home.png",
      //       ),
      //     ),
      //     label: 'home',
      //     //backgroundColor: Colors.blue
      //   ),
      //   BottomNavigationBarItem(
      //     icon: ImageIcon(
      //       size: 30,
      //       color: Color(0xFF2D7D53),
      //       AssetImage(
      //         "assets/images/Icon_Profil_Active.png",
      //       ),
      //     ),
      //     label: 'camera',
      //     //backgroundColor: Colors.blue,
      //   ),
      //   BottomNavigationBarItem(
      //     icon: ImageIcon(
      //       size: 30,
      //       color: Color(0xFF2D7D53),
      //       AssetImage(
      //         "assets/images/Icon Cart_2.png",
      //       ),
      //     ),
      //     label: 'search',
      //     // backgroundColor: Colors.blue
      //   ),
      //   BottomNavigationBarItem(
      //     icon: ImageIcon(
      //       size: 30,
      //       color: Color(0xFF2D7D53),
      //       AssetImage(
      //         "assets/images/Icon_Chat _Wit.png",
      //       ),
      //     ),
      //     label: 'search',
      //     //backgroundColor: Colors.blue
      //   ),
      // ],
      // onTap: (index) {
      //   setState(() {
      //     currentIndex = index;
      //   });
      // },
    );
  }
}

class LineIcons {}
