import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
    ),
  );
}
