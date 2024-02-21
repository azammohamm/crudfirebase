import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color txtColor;
  final FontWeight? fontWeight;
  final Color? borderColor;
  final double btnHeight;
  final double? btnWidth;
  final double? txtSize;
  final double? spaceBt;
  final double? borderRadius;
  final Function() onPressed;
  final IconData? suffixIcon;
  final double? suffixIconSize;
  final double? padding;

  const CustomButton({
    Key? key,
    required this.btnText,
    required this.btnColor,
    required this.txtColor,
    required this.btnHeight,
    required this.onPressed,
    this.fontWeight,
    this.borderColor,
    this.btnWidth,
    this.borderRadius,
    this.txtSize,
    this.spaceBt,
    this.suffixIcon,
    this.suffixIconSize,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: btnHeight,
        width: btnWidth ?? MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(padding ?? 0),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          border: Border.all(
            width: 1.0,
            color: borderColor ?? Colors.white,
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            suffixIcon != null
                ? Padding(
                    padding: EdgeInsets.only(right: spaceBt ?? 10),
                    child: Icon(
                      suffixIcon,
                      size: suffixIconSize,
                      color: txtColor,
                    ), // Adjust size and color as needed
                  )
                : const SizedBox.shrink(),
            Text(
              btnText,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: txtColor,
                fontSize: txtSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
