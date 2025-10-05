import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nails_app/app/theme/theme.dart';
import 'package:nails_app/presentation/providers/screen_controller.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.screenController});

  final ScreenController screenController;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    //TODO: Вынести параметры в стиль
    final theme = Theme.of(context).extension<AppThemeData>()!;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.screenController.currentScreen.index,
      onTap: (index) {
        widget.screenController.changeScreen(Screen.values[index]);
      },
      items: [
        _buildNavItem(context, "assets/icons/home_outline.svg", 'Главная'),
        _buildNavItem(
          context,
          "assets/icons/square_4_outline.svg",
          'Мои записи',
        ),
        _buildNavItem(
          context,
          "assets/icons/calendar_outline.svg",
          'Календарь',
        ),
      ],
      backgroundColor: theme.bottomNavigationBarStyle.backgroundColor,
      selectedItemColor: theme.bottomNavigationBarStyle.selectedItemColor,
      selectedLabelStyle: theme.bottomNavigationBarStyle.selectedItemLabel,
      showUnselectedLabels: false,
      elevation: 8,
    );
  }

  BottomNavigationBarItem _buildNavItem(
    BuildContext context,
    String assetName,
    String label,
  ) {
    final theme = Theme.of(context).extension<AppThemeData>()!;

    return BottomNavigationBarItem(
      icon: _icon(
        assetName,
        theme.bottomNavigationBarStyle.unselectedItemColor,
      ),
      activeIcon: _activeIcon(
        assetName,
        theme.bottomNavigationBarStyle.selectedItemColor,
      ),
      label: label,
    );
  }

  Widget _icon(String assetName, Color color) {
    return SvgPicture.asset(
      assetName,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }

  Widget _activeIcon(String assetName, Color color) {
    return SvgPicture.asset(
      assetName,
      width: 28,
      height: 28,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
