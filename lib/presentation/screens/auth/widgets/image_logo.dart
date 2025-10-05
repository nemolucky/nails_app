import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  const ImageLogo({
    super.key, 
    required this.horizontalPadding
  });

  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Image.asset("assets/images/new_logo.png"),
    );
  }
}
