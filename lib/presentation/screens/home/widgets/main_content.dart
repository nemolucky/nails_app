import 'package:flutter/material.dart';

class DescriptionContent extends StatelessWidget {
  const DescriptionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: Text(
        "Добро пожаловать в мое приложении для записи на маникюр!\n"
        "\t• Десятки довольных клиентов\n"
        "\t• Подскажу идеальную форму ногтей для ваших рук\n"
        "\t• Работаю в самых современных техниках\n"
        "\t• Стирелизую и обрабатываю все инструменты по нормам СанПин\n"
        "\t• Переодичеки ищу моделей для дизайнов в телеграмм-канале @nailselizza",
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
