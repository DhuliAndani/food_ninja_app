import 'package:flutter/material.dart';

class FinishOrderCommon extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  final Color? color;
  final Color? SecondColor;
  const FinishOrderCommon(
      {Key? key,
      this.height,
      this.width,
      this.color,
      this.SecondColor,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: width!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color!,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text!,
            style: TextStyle(
              color: SecondColor!,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: "Merriweather-Bold",
            ),
          )
        ],
      ),
    );
  }
}
