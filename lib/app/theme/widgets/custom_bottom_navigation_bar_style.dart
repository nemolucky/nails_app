import 'package:flutter/material.dart';

class CustomBottomNavigationBarStyle {
  final Color backgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final TextStyle selectedItemLabel;

  CustomBottomNavigationBarStyle({
    required this.backgroundColor, 
    required this.selectedItemColor, 
    required this.unselectedItemColor, 
    required this.selectedItemLabel
  });
}