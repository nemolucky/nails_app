import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/widgets/custom_elevated_button_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.horizontalPadding,
    required this.elevatedButtonStyle,
  });

  final String text;
  final VoidCallback? onPressed;
  final double horizontalPadding;
  final CustomElevatedButtonStyle elevatedButtonStyle;

  @override
  Widget build(BuildContext context) {
    //TODO: Вынести параметры в стиль

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 450),
        child: ElevatedButton(
          onPressed: onPressed,
          style: elevatedButtonStyle.style,
          child: Text(text, style: elevatedButtonStyle.textStyle),
        ),
      ),
    );
  }
}
