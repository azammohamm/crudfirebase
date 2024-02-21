import 'package:flutter/material.dart';
import 'custom_text.dart';


class CustomAnimText extends StatelessWidget {
  final int targetValue;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final TextAlign? textAlign;


  const CustomAnimText({
    super.key,
    required this.targetValue,
    required this.fontSize,
    this.fontWeight,
    this.fontColor,
    this.textAlign,

  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: targetValue),
      duration: const Duration(seconds: 2),
      builder: (context, value, child) {
        return Row(
          children: [
            CustomText(
              text: value.toString(),
              fontColor: fontColor ?? Colors.black,
              fontWeight: fontWeight ?? FontWeight.w500,
              fontSize: fontSize,
              textAlign: textAlign ?? TextAlign.start,
            ),
            CustomText(
              fontColor: fontColor ?? Colors.black,
              fontWeight: fontWeight ?? FontWeight.w500,
              fontSize: fontSize,
              textAlign: textAlign ?? TextAlign.start, text: '',
            ),
          ],
        );
      },
      onEnd: () {
        // Animation completed, you can handle any post-animation logic here
      },
    );
  }
}
