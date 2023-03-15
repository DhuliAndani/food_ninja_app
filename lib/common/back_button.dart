import 'package:flutter/material.dart';

class Back_Button extends StatelessWidget {
  final String? text;
  const Back_Button({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            'text!',
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Merriweather-Bold",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
