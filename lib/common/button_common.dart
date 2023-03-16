import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  final String? text;
  final double? height;
  final double? width;
  final VoidCallback? onPress;

  const ButtonCommon(
      {Key? key, this.text, this.height, this.width, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(
          color: Color(0xFFFEFEFF),
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "Merriweather-Bold",
        )),
        shape: MaterialStateProperty.all(ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
        overlayColor: const MaterialStatePropertyAll(Color(0xFF53E88B)),
        backgroundColor: const MaterialStatePropertyAll(Color(0xFF53E88B)),
        fixedSize: MaterialStateProperty.all(
          Size(width!, height!),
        ),
      ),
      child: Text(
        text!,
      ),
    );
  }
}
