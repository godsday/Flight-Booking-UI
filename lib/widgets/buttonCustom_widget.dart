import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.pressed, this.color, required this.width, required this.height})
      : super(key: key);
  final String text;
  final VoidCallback pressed;
  final Color? color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            fixedSize:  Size(width, height), primary:color),
        onPressed: pressed,
        child: Text(text));
  }
}