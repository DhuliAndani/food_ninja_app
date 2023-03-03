import 'package:flutter/material.dart';

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
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF0D0D0D),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/Map_Track_Pattern.png",
                      ),
                      // const Text(
                      //       "Track Orders",
                      //       style: TextStyle(
                      //         fontFamily: "BentonSans",
                      //         fontSize: 17,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
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
