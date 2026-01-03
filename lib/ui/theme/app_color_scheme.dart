import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppColorScheme {
  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,

    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,

    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,

    error: Colors.red,
    onError: Colors.white,

    surface: Colors.white,
    onSurface: AppColors.textPrimary,

    outline: AppColors.border,
  );
}
