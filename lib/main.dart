import 'package:flutter/material.dart';
import 'package:food_ninja_app/chirag/signup_process.dart';
import 'package:food_ninja_app/pinal/home_screen.dart';

//import 'chirag/on_boarding_two.dart';
import 'dhuli/bottom_bar.dart';
//import 'dhuli/profile_screen.dart';
//import 'dhuli/profile_screen.dart';
//import 'pinal/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignupProcess(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:food_ninja_app/dhuli/profile_screen.dart';
// import 'package:food_ninja_app/pinal/home_screen.dart';
// import 'package:food_ninja_app/pinal/message_screen.dart';

// class Bottombar extends StatefulWidget {
//   const Bottombar({Key? key}) : super(key: key);

//   @override
//   State<Bottombar> createState() => _BottombarState();
// }

// class _BottombarState extends State<Bottombar> {
//   int currentIndex = 0;
//   List<Widget> screenList = [
//     const HomeScreen(),
//     const ProfileScreen(),
//     Container(color: Colors.pink),
//     const MessageScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       showSelectedLabels: false,
//       type: BottomNavigationBarType.shifting,
//       items: [
//         const BottomNavigationBarItem(
//             icon: Image(
//               image: AssetImage("assets/images/Home_1.png"),
//             ),
//             label: "Home",
//             backgroundColor: Colors.black),
//         const BottomNavigationBarItem(
//             icon: Image(
//               image: AssetImage("assets/images/Home_1.png"),
//             ),
//             label: "Home",
//             backgroundColor: Colors.black),
//         const BottomNavigationBarItem(
//             icon: Image(
//               image: AssetImage("assets/images/Home_1.png"),
//             ),
//             label: "Home",
//             backgroundColor: Colors.black),
//         BottomNavigationBarItem(
//             icon: Stack(
//               children: const [
//                 Image(
//                   image: AssetImage("assets/images/Home_1.png"),
//                 ),
//                 // Padding(
//                 //   padding: EdgeInsets.only(left: 16),
//                 //   child: Image(
//                 //     image: AssetImage("assets/images/Ellipse 164_2.png"),
//                 //   ),
//                 // ),
//               ],
//             ),
//             label: "Home",
//             backgroundColor: Colors.black),
//       ],
//     );
//   }
// }

