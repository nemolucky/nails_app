import 'package:flutter/material.dart';
import 'package:nails_app/presentation/screens/screens.dart';

class AppRoutes {
  static const String auth = '/auth';
  static const String main = '/main';
  
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return MaterialPageRoute(builder: (_) => MainFrame());
      case auth:
        return MaterialPageRoute(builder: (_) => AuthScreen());
    }
    return null;
  }
}