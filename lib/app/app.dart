import 'package:flutter/material.dart';
import 'package:nails_app/app/routes/app_routes.dart';
import 'package:nails_app/app/theme/app_themes.dart';

class NailsApp extends StatelessWidget {
  const NailsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        extensions: [
          AppThemes.light,
        ],
      ),
      initialRoute: AppRoutes.auth,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
