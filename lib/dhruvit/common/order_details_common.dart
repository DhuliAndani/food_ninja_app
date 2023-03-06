import 'package:flutter/material.dart';

class OrderDetailsCommon extends StatelessWidget {
  final Image? image;
  const OrderDetailsCommon({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 103,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF252525),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 62,
                width: 62,
                child: image,
              ),
              SizedBox(
                height: 62,
                width: 62,
                child: image,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Spacy fresh crab",
                      style: TextStyle(
                        fontFamily: "BentonSans",
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "waroenk kita",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 14,
                          color: Color.fromARGB(73, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      "\$ 35",
                      style: TextStyle(
                        fontFamily: "BentonSans",
                        fontSize: 19,
                        color: Color(0xFF53E88B),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 92,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 26,
                      width: 26,
                      child: Image(
                        image: AssetImage("assets/images/Icon_Minus.png"),
                      ),
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        fontFamily: "BentonSans",
                        fontSize: 16,
                        color: Color.fromARGB(178, 255, 255, 255),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 26,
                      width: 26,
                      child: Image(
                        image: AssetImage("assets/images/Icon_Plus.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
