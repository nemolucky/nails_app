import 'package:flutter/material.dart';
import 'package:nails_app/presentation/screens/screens.dart';

enum Screen{
  home,
  records,
  calendar,
}

extension ScreenExtension on Screen {
  Widget get widget {
    switch (this) {
      case Screen.home:
        return HomeScreen();
      case Screen.records:
        return RecordsScreen();
      case Screen.calendar:
        return CalendarScreen();
    }
  }
}

class ScreenController with ChangeNotifier {
  Screen _currentScreen = Screen.home;
  
  Screen get currentScreen => _currentScreen;
  
  void changeScreen(Screen newScreen) {
    if (_currentScreen != newScreen) {
      _currentScreen = newScreen;
      notifyListeners();
    }
  }
  
  void goToHome() => changeScreen(Screen.home);
  void goToRecords() => changeScreen(Screen.records);
  void goToCalendar() => changeScreen(Screen.calendar);
}