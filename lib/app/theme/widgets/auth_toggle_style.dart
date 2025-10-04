import 'package:flutter/material.dart';

class AuthToggleStyle {
  final Color? backgroundColor;
  final Color? enabledColor;
  final BoxBorder? border;
  final TextStyle? enabledText;
  final TextStyle? disabledText;

  AuthToggleStyle({
    required this.backgroundColor, 
    required this.enabledColor,
    required this.border,
    required this.enabledText,
    required this.disabledText,
  });
}