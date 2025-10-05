import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/widgets/widgets.dart';


class AppThemeData extends ThemeExtension<AppThemeData> {
  final Color primaryColor;
  final Color onPrimaryColor;
  final Color scaffoldBackgroundColor;
  final CustomTextFieldStyle textFieldStyle;
  final AuthToggleStyle authToggleStyle;
  final CustomElevatedButtonStyle elevatedButtonStyle;
  final CustomBottomNavigationBarStyle bottomNavigationBarStyle;
  
  const AppThemeData({
    required this.primaryColor,
    required this.onPrimaryColor,
    required this.scaffoldBackgroundColor,
    required this.textFieldStyle,
    required this.authToggleStyle,
    required this.elevatedButtonStyle,
    required this.bottomNavigationBarStyle,
  });

  @override
  ThemeExtension<AppThemeData> copyWith({
    Color? primaryColor,
    Color? onPrimaryColor,
    Color? scaffoldBackgroundColor,
    CustomTextFieldStyle? textFieldStyle,
    AuthToggleStyle? authToggleStyle,
    CustomElevatedButtonStyle? elevatedButtonStyle,
    CustomBottomNavigationBarStyle? bottomNavigationBarStyle ,
  }) {
    return AppThemeData(
      primaryColor: primaryColor ?? this.primaryColor,
      onPrimaryColor: onPrimaryColor ?? this.onPrimaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      textFieldStyle: textFieldStyle ?? this.textFieldStyle,
      authToggleStyle: authToggleStyle ?? this.authToggleStyle,
      elevatedButtonStyle: elevatedButtonStyle ?? this.elevatedButtonStyle,
      bottomNavigationBarStyle: bottomNavigationBarStyle ?? this.bottomNavigationBarStyle,
    );
  }

  @override
  ThemeExtension<AppThemeData> lerp(
    ThemeExtension<AppThemeData>? other, 
    double t,
  ) {
    if (other is! AppThemeData) return this;
    
    return AppThemeData(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      onPrimaryColor: Color.lerp(onPrimaryColor, other.onPrimaryColor, t)!,
      scaffoldBackgroundColor: Color.lerp(scaffoldBackgroundColor, other.scaffoldBackgroundColor, t)!, 
      textFieldStyle: textFieldStyle,
      authToggleStyle: authToggleStyle,
      elevatedButtonStyle: elevatedButtonStyle,
      bottomNavigationBarStyle: bottomNavigationBarStyle
    );
  }
}