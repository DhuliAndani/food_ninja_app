import 'package:flutter/material.dart';

class ButtinCommon extends StatelessWidget {
  const ButtinCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: 157,
      decoration: BoxDecoration(
          color: Color(0xff53E88B), borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}
