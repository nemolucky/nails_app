import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/theme.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Сделать кнопку переключения Layout отобрадения работ Grid и Page
    final theme = Theme.of(context).extension<AppThemeData>()!;
    
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Работы"),
        centerTitle: true,
      ),
      body: PageView.builder(
        itemCount: 10, // Количество работ
        itemBuilder: (context, index) {
          return _workPage(index);
        },
      ),
    );
  }

  Widget _workPage(int index) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3, // Большая часть для изображения
            child: _workImage(),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 1, // Меньшая часть для подписи
            child: _workDescription(index),
          ),
        ],
      ),
    );
  }

  Widget _workImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/images/test_work.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }

  Widget _workDescription(int index) {
    final workTitles = [
      "Френч",
      "Лунный маникюр", 
      "Градиент",
      "Свадебный дизайн",
      "Геометрия",
      "Винтаж",
      "Мраморный",
      "Фольгирование",
      "Стемпинг",
      "Акварель"
    ];
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          workTitles[index % workTitles.length],
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          "Работа ${index + 1} из 10",
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}