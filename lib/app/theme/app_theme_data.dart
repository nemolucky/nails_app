import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/widgets/auth_toggle_style.dart';
import 'package:nails_app/app/theme/widgets/custom_elevated_button_style.dart';
import 'package:nails_app/app/theme/widgets/custom_text_field_style.dart';

class AppThemeData extends ThemeExtension<AppThemeData> {
  final Color primaryColor;
  final Color secondaryColor;
  final Color successColor;
  final Color warningColor;
  final Color errorColor;
  final Color surfaceColor;
  final Color onPrimaryColor;
  final Color onSecondaryColor;
  final Color onBackgroundColor;
  final Color onSurfaceColor;
  final Color scaffoldBackgroundColor;
  final CustomTextFieldStyle textFieldStyle;
  final AuthToggleStyle authToggleStyle;
  final CustomElevatedButtonStyle elevatedButtonStyle;
  
  const AppThemeData({
    required this.primaryColor,
    required this.secondaryColor,
    required this.successColor,
    required this.warningColor,
    required this.errorColor,
    required this.surfaceColor,
    required this.onPrimaryColor,
    required this.onSecondaryColor,
    required this.onBackgroundColor,
    required this.onSurfaceColor,
    required this.scaffoldBackgroundColor,
    required this.textFieldStyle,
    required this.authToggleStyle,
    required this.elevatedButtonStyle,
  });

  @override
  ThemeExtension<AppThemeData> copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? successColor,
    Color? warningColor,
    Color? errorColor,
    Color? surfaceColor,
    Color? onPrimaryColor,
    Color? onSecondaryColor,
    Color? onBackgroundColor,
    Color? onSurfaceColor,
    Color? scaffoldBackgroundColor,
    CustomTextFieldStyle? textFieldStyle,
    AuthToggleStyle? authToggleStyle,
    CustomElevatedButtonStyle? elevatedButtonStyle
  }) {
    return AppThemeData(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      successColor: successColor ?? this.successColor,
      warningColor: warningColor ?? this.warningColor,
      errorColor: errorColor ?? this.errorColor,
      surfaceColor: surfaceColor ?? this.surfaceColor,
      onPrimaryColor: onPrimaryColor ?? this.onPrimaryColor,
      onSecondaryColor: onSecondaryColor ?? this.onSecondaryColor,
      onBackgroundColor: onBackgroundColor ?? this.onBackgroundColor,
      onSurfaceColor: onSurfaceColor ?? this.onSurfaceColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      textFieldStyle: textFieldStyle ?? this.textFieldStyle,
      authToggleStyle: authToggleStyle ?? this.authToggleStyle,
      elevatedButtonStyle: elevatedButtonStyle ?? this.elevatedButtonStyle
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
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      successColor: Color.lerp(successColor, other.successColor, t)!,
      warningColor: Color.lerp(warningColor, other.warningColor, t)!,
      errorColor: Color.lerp(errorColor, other.errorColor, t)!,
      surfaceColor: Color.lerp(surfaceColor, other.surfaceColor, t)!,
      onPrimaryColor: Color.lerp(onPrimaryColor, other.onPrimaryColor, t)!,
      onSecondaryColor: Color.lerp(onSecondaryColor, other.onSecondaryColor, t)!,
      onBackgroundColor: Color.lerp(onBackgroundColor, other.onBackgroundColor, t)!,
      onSurfaceColor: Color.lerp(onSurfaceColor, other.onSurfaceColor, t)!,
      scaffoldBackgroundColor: Color.lerp(scaffoldBackgroundColor, other.scaffoldBackgroundColor, t)!, 
      textFieldStyle: textFieldStyle,
      authToggleStyle: authToggleStyle,
      elevatedButtonStyle: elevatedButtonStyle
    );
  }
}