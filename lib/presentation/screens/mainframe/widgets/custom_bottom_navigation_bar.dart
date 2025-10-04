import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nails_app/presentation/providers/screen_controller.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key, 
    required this.screenController,
  });

  final ScreenController screenController;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.screenController.currentScreen.index,
      onTap: (index) {
        widget.screenController.changeScreen(Screen.values[index]);
      },
      items: [
        BottomNavigationBarItem(
          icon: _icon("assets/icons/home_outline.svg"),
          activeIcon: _activeIcon("assets/icons/home_outline.svg"),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: _icon("assets/icons/square_4_outline.svg"),
          activeIcon: _activeIcon("assets/icons/square_4_outline.svg"),
          label: 'Мои записи',
        ),
        BottomNavigationBarItem(
          icon: _icon("assets/icons/calendar_outline.svg"),
          activeIcon: _activeIcon("assets/icons/calendar_outline.svg"),
          label: "Календарь"
        ),
      ],
      backgroundColor: Colors.white,
      showUnselectedLabels: false,
      elevation: 8,
      selectedItemColor: Color.fromRGBO(66, 127, 189, 1),
    );
  }

  Widget _icon(String assetName){
    return SvgPicture.asset(
      assetName,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(
            Color.fromRGBO(163, 163, 163, 1),
            BlendMode.srcIn,
          ),
    );
  }

  Widget _activeIcon(String assetName){
    return SvgPicture.asset(
      assetName,
      width: 28,
      height: 28,
      colorFilter: ColorFilter.mode(
            Color.fromRGBO(66, 127, 189, 1),
            BlendMode.srcIn,
          ),
    );
  }  
}