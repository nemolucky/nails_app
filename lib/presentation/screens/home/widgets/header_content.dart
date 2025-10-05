import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    super.key,
    required this.headerStyle,
    required this.descriptionStyle,
  });

  final TextStyle headerStyle;
  final TextStyle descriptionStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: 100,
            height: 100,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/hero_avatar.jpg"),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Елизавета", 
                style: headerStyle
              ),
              Text(
                "Ваш Nail’s мастер\nМосква, 11-Парковая ул, 36",
                style: descriptionStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
