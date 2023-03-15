import 'package:flutter/material.dart';

class MessageCommonContainer extends StatelessWidget {
  final String? image;
  final String? text;
  final String? countText;
  final String? secondText;
  const MessageCommonContainer(
      {Key? key, this.image, this.text, this.countText, this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      width: 335,
      decoration: BoxDecoration(
        color: Color(0xFF252525),
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    text!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "Merriweather-Bold"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      secondText!,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0x33FFFFFF),
                          fontFamily: "Roboto-Regular"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                countText!,
                style: TextStyle(
                    color: Color(0x33FFFFFF),
                    fontSize: 14,
                    fontFamily: "Roboto-Regular"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
