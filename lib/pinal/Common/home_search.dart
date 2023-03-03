import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  final String? text;
  final String? image;
  const HomeSearch({Key? key, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 260,
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Image(
            image: AssetImage(image!),
          ),
          Text(
            text!,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontFamily: "Roboto-Regular",
            ),
          ),
        ],
      ),
    );
  }
}
