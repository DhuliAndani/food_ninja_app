import 'package:flutter/material.dart';

class SuccessNotificationScreen extends StatefulWidget {
  const SuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  State<SuccessNotificationScreen> createState() =>
      _SuccessNotificationScreenState();
}

class _SuccessNotificationScreenState extends State<SuccessNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/green.png"),
              Image.asset("assets/images/Success Illustration.png"),
              const Padding(
                padding: EdgeInsets.only(top: 210),
                child: Text(
                  "Congrats!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweather-Bold",
                    color: Color(0xFF53E88B),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 280),
                child: Text(
                  "Password reset succesful",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Rubik-Regular",
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 680),
                child: Container(
                  height: 57,
                  width: 159,
                  decoration: BoxDecoration(
                    color: const Color(0xFF53E88B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Merriweather-Bold",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
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
