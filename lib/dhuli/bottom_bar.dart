import 'package:flutter/material.dart';
import 'package:food_ninja_app/dhuli/profile_screen.dart';
import 'package:food_ninja_app/pinal/home_screen.dart';

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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFF505050),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1C1C1E),
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                size: 25,
                AssetImage(
                  "assets/images/Icon_Home.png",
                ),
              ),
              label: 'home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ImageIcon(
                size: 25,
                AssetImage(
                  "assets/images/Icon_Profil_Active.png",
                ),
              ),
              label: 'camera',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ImageIcon(
                size: 30,
                AssetImage(
                  "assets/images/Icon Cart_2.png",
                ),
              ),
              label: 'search',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ImageIcon(
                size: 30,
                AssetImage(
                  "assets/images/Icon_Chat _Wit.png",
                ),
              ),
              label: 'search',
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
