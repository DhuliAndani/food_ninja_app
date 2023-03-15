import 'package:flutter/material.dart';

class CommonTwo extends StatelessWidget {
  final String? text;
  final String? image;
  final String? countText;
  final String? SecondText;
  const CommonTwo(
      {Key? key, this.text, this.image, this.countText, this.SecondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: 347,
      decoration: BoxDecoration(
        color: Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Image(
            image: AssetImage(image!),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                text!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweather-Bold"),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                countText!,
                style: TextStyle(
                  fontFamily: "Roboto-Regular",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0x33FFFFFF),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                SecondText!,
                style: TextStyle(
                  color: Color(0x99FFFFFF),
                  fontSize: 19,
                  fontFamily: "Merriweather-Bold",
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 29,
            width: 79,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(17.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Reorder",
                  style: TextStyle(
                      color: Color(0xFF252525),
                      fontFamily: "Merriweather-Bold",
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
