import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormField extends StatelessWidget {
  final String hint;
  final String? titleText;
  final Color? titleColor;
  final double titleFontSize;
  final double? height;
  final Color? fieldColor;
  final Color? suffixIcon;
  final double fontSize;
  final double contentPadding;
  final double? iconSize;
  final double? iconPaddingRight;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextEditingController? tec;
  final bool? isSelected;
  final bool? showPassword;
  final bool? obscureText;
  final bool showTitle;
  final void Function()? onPressed;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final FontWeight? titleFontWeight;

  const CustomFormField({
    Key? key,
    required this.hint,
    this.titleText,
    required this.titleFontSize,
    required this.fontSize,
    required this.contentPadding,
    this.titleColor,
    this.titleFontWeight,
    this.iconPaddingRight,
    this.maxLength,
    this.iconSize,
    this.showPassword,
    this.obscureText,
    this.showTitle = true,
    this.height,
    this.fieldColor,
    this.keyboardType,
    this.tec,
    this.onPressed,
    this.isSelected,
    this.inputFormatters,
    this.textInputAction,
    this.validator,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showTitle
            ? Column(
                children: [
                  Text(
                    titleText!,
                    style: GoogleFonts.roboto(
                      color: titleColor ?? const Color(0xFF444444),
                      fontSize: titleFontSize,
                      fontWeight: titleFontWeight ?? FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              )
            : const SizedBox.shrink(),
        TextFormField(
          controller: tec,
          showCursor: true,
          inputFormatters: inputFormatters,
          autocorrect: false,
          maxLength: maxLength,
          obscureText: obscureText ?? false,
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.15),
              ), // Border color when the field is focused
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ), // Border color when the field is focused
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(7),
            ),
            hintText: hint,
            hintStyle: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
            ),
            errorStyle: GoogleFonts.roboto(
              color: Colors.red,
              fontSize: fontSize - 3,
              fontWeight: FontWeight.w500,
            ),
            suffixIcon: showPassword == true
                ? IconButton(
                    highlightColor:Colors.grey,
                    padding: EdgeInsets.only(right: iconPaddingRight ?? 10),
                    icon: Icon(
                      obscureText == true
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                     // Theme.of(context).primaryColorDark,
                      size: iconSize,
                    ),
                    onPressed: onPressed,
                  )
                : null,
          ),
          validator: validator,
        )
      ],
    );
  }
}
