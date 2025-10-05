import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/components/cursor_style.dart';

class CustomTextFieldStyle {

  //TODO: добавить параметр для errorBorder

  final Color backgroundColor;
  final TextStyle textStyle;
  final TextStyle hintStyle;
  final InputBorder border;
  final InputBorder focusBorder;
  final BoxConstraints constraints;
  final CursorStyle cursorStyle;

  CustomTextFieldStyle({
    required this.backgroundColor,
    required this.textStyle,
    required this.hintStyle,
    required this.border,
    required this.focusBorder,
    required this.constraints,
    this.cursorStyle = CursorStyle.defaultStyle
  });
}
