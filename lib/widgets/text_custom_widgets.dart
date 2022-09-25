import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCustomStyle extends StatelessWidget {
  final double? textSize;
  final String? textData;
  final Color? textColor;
  final FontWeight? textWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final double? spaceheight;

  const TextCustomStyle(
      {Key? key,
      this.textData,
      this.textSize,
      this.textWeight,
      this.fontStyle,
      this.textColor,
      this.fontFamily,
      this.textAlign,
      this.spaceheight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textData!,
      textAlign: textAlign,
      style: GoogleFonts.acme(
        height: spaceheight,
        fontStyle: fontStyle,
        fontSize: textSize,
        fontWeight: textWeight,
        color: textColor,
      ),
    );
  }
}
