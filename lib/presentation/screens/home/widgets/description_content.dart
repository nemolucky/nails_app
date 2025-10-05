import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DescriptionContent extends StatelessWidget {
  const DescriptionContent({
    super.key,
    required this.style,
    required this.horizontalPadding,
  });

  final TextStyle style;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 0),
      child: Column(
        children: [
          Text(
            "Добро пожаловать в мое приложении для записи на маникюр!",
            style: style,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RichText(
              text: TextSpan(
                style: style,
                children: [
                  TextSpan(text: "• Десятки довольных клиентов\n"),
                  TextSpan(
                    text: "• Подскажу идеальную форму ногтей для ваших рук\n",
                  ),
                  TextSpan(text: "• Работаю в самых современных техниках\n"),
                  TextSpan(
                    text:
                        "• Стирелизую и обрабатываю все инструменты по нормам СанПин\n",
                  ),
                  TextSpan(
                    text:
                        "• Переодичеки ищу моделей для дизайнов в телеграмм-канале ",
                  ),
                  TextSpan(
                    text: "@nailselizza",
                    style: style.copyWith(
                      color: AppColors.primary,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchUrl('https://t.me/nailselizza'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Не удалось открыть $url');
    }
  }
}
