import 'package:flutter/material.dart';

class CursorStyle {
  final double width;
  final double height;
  final Radius radius;
  final Color color;
  final bool opacityAnimates;
  
  const CursorStyle({
    this.width = 2.0,
    this.height = 20.0,
    this.radius = const Radius.circular(1.0),
    this.color = Colors.black,
    this.opacityAnimates = true,
  });

  static const CursorStyle defaultStyle = CursorStyle();
}