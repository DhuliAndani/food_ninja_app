import 'package:flutter/material.dart';

class Back_Button extends StatelessWidget {
  final String? text;
  final String? textTwo;
  const Back_Button({Key? key, this.text, this.textTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage("assets/images/Pattern.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 40),
          child: SizedBox(
            height: 50,
            width: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff251C13),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xffF9A84D),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 110),
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Merriweather-Bold",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 150),
          child: Text(
            textTwo ?? '',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
