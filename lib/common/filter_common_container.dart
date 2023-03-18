import 'package:flutter/material.dart';

class FilterCommonContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  const FilterCommonContainer({Key? key, this.height, this.width, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: width!,
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto-Regular",
          ),
        ),
      ),
    );
  }
}
