import 'package:flutter/material.dart';
import 'package:nails_app/presentation/screens/home/widgets/header_content.dart';
import 'package:nails_app/presentation/screens/home/widgets/header_background.dart';
import 'package:nails_app/presentation/screens/home/widgets/main_content.dart';
import 'package:nails_app/presentation/screens/home/widgets/works_content.dart';
import 'package:nails_app/presentation/screens/home/widgets/works_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      constraints: BoxConstraints.expand(),
      child: SingleChildScrollView(
        child: Column(children: [_buildHeader(), ..._buildContent()]),
      ),
    );
  }

  Widget _buildHeader() {
    return SizedBox(
      height: 375, 
      child: Stack(
        children: [
          HeaderBackground(),
          Positioned(
            bottom: 50, 
            left: 0,
            right: 0,
            child: HeaderContent(),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildContent() {
    return [
      DescriptionContent(),
      WorksHeader(),
      WorksContent()
    ];
  }
}
