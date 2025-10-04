import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/app_theme_data.dart';
import 'package:nails_app/presentation/screens/home/widgets/header_content.dart';
import 'package:nails_app/presentation/screens/home/widgets/header_background.dart';
import 'package:nails_app/presentation/screens/home/widgets/main_content.dart';
import 'package:nails_app/presentation/screens/home/widgets/works_content.dart';
import 'package:nails_app/presentation/screens/home/widgets/works_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeData>()!;

    return Container(
      color: theme.scaffoldBackgroundColor,
      constraints: BoxConstraints.expand(),
      child: SingleChildScrollView(
        child: Column(children: [_buildHeader(), ..._buildContent()]),
      ),
    );
  }

  Widget _buildHeader() {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          HeaderBackground(),
          Positioned(bottom: 25, left: 0, right: 0, child: HeaderContent()),
        ],
      ),
    );
  }

  List<Widget> _buildContent() {
    return [DescriptionContent(), WorksHeader(), WorksContent()];
  }
}
