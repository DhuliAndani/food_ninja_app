import 'package:flutter/material.dart';

class CallRingingScreen extends StatefulWidget {
  const CallRingingScreen({Key? key}) : super(key: key);

  @override
  State<CallRingingScreen> createState() => _CallRingingScreenState();
}

class _CallRingingScreenState extends State<CallRingingScreen> {
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
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 190, left: 100),
                  child: Image(
                    image: AssetImage("assets/images/Image.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 390, left: 100),
                  child: Text(
                    "Courtney Henry",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Merriweather-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 435, left: 150),
                  child: Text(
                    "Ringing . . .",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Nunito-Regular",
                      fontWeight: FontWeight.normal,
                      fontSize: 19,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 700),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/Speaker Icon.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image(
                        image: AssetImage("assets/images/Close Icon_1.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Image(
        //     image: AssetImage("assets/images/"),
        //   ),
        // ),
      ),
    );
  }
}
