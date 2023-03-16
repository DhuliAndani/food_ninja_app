import 'package:flutter/material.dart';

import '../pinal/explore_menu_screen.dart';

class ButtonCommon extends StatelessWidget {
  final String? text;
  final double? width;
  const ButtinCommon({Key? key, this.text, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: width ?? 157,
      decoration: BoxDecoration(
          color: Color(0xff53E88B), borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        text ?? 'Next',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}
