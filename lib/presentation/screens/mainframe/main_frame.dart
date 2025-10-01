import 'package:flutter/material.dart';
import 'package:nails_app/presentation/providers/screen_controller.dart';
import 'package:nails_app/presentation/screens/mainframe/widgets/custom_bottom_navigation_bar.dart';

class MainFrame extends StatefulWidget {
  const MainFrame({super.key});

  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  late ScreenController screenController;

  @override
  void initState() {
    screenController = ScreenController();
    screenController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose(){
    screenController.dispose();
    super.dispose();
  }

  Widget currentBody() {
    return screenController.currentScreen.widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentBody(),
      bottomNavigationBar: CustomBottomNavigationBar(
        screenController: screenController,
        )
    );
  }
}