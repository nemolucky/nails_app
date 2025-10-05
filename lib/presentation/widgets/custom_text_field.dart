import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/widgets/custom_text_field_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.horizontalPadding,
    required this.textFieldStyle,
    required this.textEditingController,
  });

  final String hintText;
  final double horizontalPadding;
  final CustomTextFieldStyle textFieldStyle;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      child: TextField(
        controller: textEditingController,
        style: textFieldStyle.textStyle,

        cursorWidth: textFieldStyle.cursorStyle.width,
        cursorHeight: textFieldStyle.cursorStyle.height,
        cursorRadius: textFieldStyle.cursorStyle.radius,
        cursorColor: textFieldStyle.cursorStyle.color,
        cursorOpacityAnimates: textFieldStyle.cursorStyle.opacityAnimates,

        decoration: InputDecoration(
          filled: true,
          fillColor: textFieldStyle.backgroundColor,

          hintText: hintText,
          hintStyle: textFieldStyle.hintStyle,

          border: textFieldStyle.border,
          enabledBorder: textFieldStyle.border,
          focusedBorder: textFieldStyle.focusBorder,
          
          constraints: textFieldStyle.constraints,
        ),
      ),
    );
  }
}