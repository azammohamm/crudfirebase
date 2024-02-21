import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final TextOverflow overFlow;

  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor,
    this.textAlign,
    this.fontWeight = FontWeight.w500,
    this.letterSpacing = 0.0,
    this.overFlow=TextOverflow.ellipsis,
    // Default to false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      overflow: overFlow,
      style: GoogleFonts.roboto(
        color: fontColor ?? const Color(0xFF747474),
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
