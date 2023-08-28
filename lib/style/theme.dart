import 'package:flutter/material.dart';

import 'colors.dart';
import 'font_size.dart';

class AppTheme {
  AppTheme._();

  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.light,
    textTheme: TextTheme(
      titleLarge: TextStyle(
          color: AppColors.dark,
          fontSize: FontSize.large,
          fontWeight: FontWeight.w700),
      titleMedium: TextStyle(
        color: AppColors.dark,
        fontSize: FontSize.large,
      ),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.dark,
    textTheme: TextTheme(
      titleLarge: TextStyle(
          color: AppColors.light,
          fontSize: FontSize.large,
          fontWeight: FontWeight.w700),
      titleMedium: TextStyle(
        color: AppColors.light,
        fontSize: FontSize.large,
      ),
    ),
  );
}
