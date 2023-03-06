import 'package:flutter/material.dart';

class FinishOrderCommonContainer extends StatelessWidget {
  final String? image;
  final String? text;
  const FinishOrderCommonContainer({Key? key, this.image, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 335,
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 15),
          Image(
            image: AssetImage(image!),
          ),
          SizedBox(width: 15),
          Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: Color(0x4DFFFFFF),
              fontWeight: FontWeight.normal,
              fontFamily: "Rubik-Regular",
            ),
          ),
          SizedBox(width: 100),
        ],
      ),
    );
  }
}
