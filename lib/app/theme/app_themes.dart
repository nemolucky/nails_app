import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/app_theme_data.dart';
import 'package:nails_app/app/theme/widgets/widgets.dart';


class AppThemes {
  static final AppThemeData light = AppThemeData(
    primaryColor: Color(0xFF427FF9),
    onPrimaryColor: Color.fromRGBO(255, 255, 255, 1),
    secondaryColor: Color.fromRGBO(255, 255, 255, 1),
    onSecondaryColor: Color(0xFFFFFFFF),
    surfaceColor: Color.fromRGBO(255, 255, 255, 1),
    onSurfaceColor: Color(0xFFFFFFFF),
    successColor: Color(0xFFFFFFFF),
    warningColor: Color(0xFFFFFFFF),
    errorColor: Color(0xFFFFFFFF),
    onBackgroundColor: Color(0xFFFFFFFF),
    scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),

    //TODO: Вынести цвета и стили текста

    textFieldStyle: CustomTextFieldStyle(
      backgroundColor: Color(0xFFF3F3F3),
      constraints: BoxConstraints(maxWidth: 450),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: "Montserrat",
      ),
      hintStyle: TextStyle(
        color: Color(0xFFADADAD),
        fontSize: 14,
        fontFamily: "Montserrat",
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: Color(0xFFEBEBEB), width: 2),
      ),
      focusBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: Color(0xFF427FF9), width: 2),
      ),
    ),

    authToggleStyle: AuthToggleStyle(
      backgroundColor: Color(0xFFFFFFFF),
      enabledColor: Color(0xFF427FF9),
      border: Border.all(color: Color(0xFF427FF9), width: 2),
      enabledText: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Montserrat",
      ),
      disabledText: TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
        fontFamily: "Montserrat",
      ),
    ),
    elevatedButtonStyle: CustomElevatedButtonStyle(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF427FF9),
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        )
      ),
      textStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Montserrat",
      ),
    ),
  );
}
