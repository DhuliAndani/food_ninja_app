import 'package:flutter/material.dart';

class ExploreMenuCommonContainer extends StatelessWidget {
  final String? image;
  final String? text;
  final String? countText;
  final String? SecondText;
  const ExploreMenuCommonContainer(
      {Key? key, this.image, this.text, this.countText, this.SecondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      width: 323,
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Image(
            image: AssetImage(image!),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 23,
              ),
              Text(
                text!,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Merriweather-Bold",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                countText!,
                style: TextStyle(
                  color: Color(0xFF3B3B3B),
                  fontFamily: "Roboto-Regular",
                  //fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            SecondText!,
            style: TextStyle(
                color: Color(0xFFFEB536),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
