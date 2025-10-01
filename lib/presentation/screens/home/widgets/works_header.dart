import 'package:flutter/material.dart';

class WorksHeader extends StatelessWidget {
  const WorksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text('Мои работы', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}