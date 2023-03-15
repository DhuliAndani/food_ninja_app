import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0x1AF9A84D),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/Vector_arrow.png",
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Reset your password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "BentonSans-Bold",
                      ),
                    ),
                    Text(
                      "here",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "BentonSans-Bold",
                      ),
                    ),
                    Text(
                      "Select which contact details should we",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        // fontFamily: "BentonSans-Bold",
                      ),
                    ),
                    Text(
                      "use to reset your password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        // fontFamily: "BentonSans-Bold",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
