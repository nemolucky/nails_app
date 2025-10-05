import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/theme.dart';

class AppTextStyles {
  static const TextStyle hint = TextStyle(
    color: AppColors.greyHint,
    fontSize: 14,
    fontFamily: "Montserrat",
  );

  static const TextStyle textField = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontFamily: "Montserrat",
  );

  static const TextStyle authToggleEnabled = TextStyle(
    color: AppColors.onPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
  );

  static const TextStyle authToggleDisabled = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontFamily: "Montserrat",
  );

  static const TextStyle elevatedButton = TextStyle(
    color: AppColors.onPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
  );

  static const TextStyle selectedItemLabel = TextStyle(
    color: AppColors.primary,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
  );

  static const TextStyle textHeader = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 26,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
  );

  static const TextStyle textDescription = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
  );
}
