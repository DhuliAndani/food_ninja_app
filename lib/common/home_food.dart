import 'package:flutter/material.dart';

class HomeFood extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final String? text;
  final String? countText;

  const HomeFood(
      {Key? key,
      this.height,
      this.width,
      this.image,
      this.text,
      this.countText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: width!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF252525),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage(image!),
          ),
          Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Merriweather-Bold",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            countText!,
            style: const TextStyle(
              color: Colors.grey,
              fontFamily: "Roboto-Regular",
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
