import 'package:flutter/material.dart';

class HomeCommonNevigation extends StatelessWidget {
  final String? image;
  final String? Secondimage;
  final String? thirdimage;
  final String? forthimage;
  final String? fiveimage;

  const HomeCommonNevigation(
      {Key? key,
      this.image,
      this.Secondimage,
      this.thirdimage,
      this.forthimage,
      this.fiveimage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(image!),
          ),
          Image(
            image: AssetImage(Secondimage!),
          ),
          Image(
            image: AssetImage(thirdimage!),
          ),
          Stack(
            children: [
              Image(
                image: AssetImage(forthimage!),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Image(
                  image: AssetImage(fiveimage!),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
