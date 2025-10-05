import 'package:flutter/material.dart';
import 'package:nails_app/presentation/providers/screen_controller.dart';
import 'package:nails_app/presentation/screens/mainframe/widgets/custom_bottom_navigation_bar.dart';

class MainFrame extends StatefulWidget {
  const MainFrame({super.key});

  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  late ScreenController _screenController;
  late PageController _pageController;

  @override
  void initState() {
    _screenController = ScreenController();
    _pageController = PageController();
    
    _screenController.addListener(() {
      if (_screenController.currentScreen.index != _pageController.page?.round()) {
        _pageController.animateToPage(
          _screenController.currentScreen.index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      }
      setState(() {});
    });
    
    super.initState();
  }

  @override
  void dispose() {
    _screenController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _screenController.changeScreen(Screen.values[index]);
        },
        physics: const BouncingScrollPhysics(),
        children: Screen.values.map((screen) => screen.widget).toList(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        screenController: _screenController,
      ),
    );
  }
}

//TODO: изменить физику добавить ее в тему
// class CustomBouncingScrollPhysics extends BouncingScrollPhysics {
//   final Color glowColor;
  
//   const CustomBouncingScrollPhysics({
//     required this.glowColor,
//     super.parent,
//   });

//   @override
//   CustomBouncingScrollPhysics applyTo(ScrollPhysics? ancestor) {
//     return CustomBouncingScrollPhysics(
//       glowColor: glowColor,
//       parent: buildParent(ancestor),
//     );
//   }

//   @override
//   double get minFlingVelocity => 50.0; // Можно настроить чувствительность

//   @override
//   double get maxFlingVelocity => 500.0;
// }