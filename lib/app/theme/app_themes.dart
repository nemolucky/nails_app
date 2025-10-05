import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/theme.dart';
import 'package:nails_app/app/theme/widgets/widgets.dart';


class AppThemes {
  static final AppThemeData light = AppThemeData(
    primaryColor: AppColors.primary,
    onPrimaryColor: AppColors.onPrimary,
    scaffoldBackgroundColor: AppColors.whiteBackground,

    textFieldStyle: CustomTextFieldStyle(
      backgroundColor: AppColors.greyBackground,
      constraints: BoxConstraints(maxWidth: 450),
      textStyle: AppTextStyles.textField,
      hintStyle: AppTextStyles.hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: AppColors.greyBorder, width: 2),
      ),
      focusBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: AppColors.primary, width: 2),
      ),
    ),

    authToggleStyle: AuthToggleStyle(
      backgroundColor: AppColors.whiteBackground,
      enabledColor: AppColors.primary,
      border: Border.all(color: AppColors.primary, width: 2),
      enabledText: AppTextStyles.authToggleEnabled,
      disabledText: AppTextStyles.authToggleDisabled,
    ),

    elevatedButtonStyle: CustomElevatedButtonStyle(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        )
      ),
      textStyle: AppTextStyles.elevatedButton,
    ),

    bottomNavigationBarStyle: CustomBottomNavigationBarStyle(
      backgroundColor: AppColors.whiteBackground, 
      selectedItemColor: AppColors.primary, 
      unselectedItemColor: AppColors.grey, 
      selectedItemLabel: AppTextStyles.selectedItemLabel
    )
  );
}
