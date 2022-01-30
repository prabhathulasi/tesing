import 'package:flutter/material.dart';
import 'package:testing_project/themes/index.dart';

class AppThemes {
  static get getLightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      primarySwatch: AppColors.primary,
    );
  }
}
