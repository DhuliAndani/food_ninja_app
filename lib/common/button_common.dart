import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  final String? text;
  final double? height;
  final double? width;
  final VoidCallback? onPress;
  final Color? color;
  final TextStyle? style;

  const ButtonCommon({
    Key? key,
    this.text,
    this.height,
    this.width,
    this.onPress,
    this.color,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
  
        shape: MaterialStateProperty.all(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        overlayColor:
            const MaterialStatePropertyAll(Color.fromARGB(71, 83, 232, 140)),
        backgroundColor: MaterialStatePropertyAll(color),
        fixedSize: MaterialStateProperty.all(
          Size(width!, height!),
        ),
      ),
    
      child: Text(
        text!,
        style:   style??  const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Merriweather-Bold",
          ),
      ),
    );
  }
}
