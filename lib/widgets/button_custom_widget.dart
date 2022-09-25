import 'package:flutter/material.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,  required this.pressed, this.color, required this.width, required this.height,required this.textstyle, this.context})
      : super(key: key);

  final VoidCallback pressed;
  final Color? color;
  final double width;
  final double height;
  final TextCustomStyle textstyle;
  final BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), backgroundColor: color,
            fixedSize:  Size(width, height)),
        onPressed: pressed,
        child: textstyle);
  }
}