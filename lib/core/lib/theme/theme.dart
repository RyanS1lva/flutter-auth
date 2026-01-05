export 'app_color_scheme.dart';
export 'app_colors.dart';
export 'app_sizes.dart';

import 'package:flutter/material.dart';

import '../../../lib.dart';

final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColorScheme.light.primary,
    foregroundColor: AppColorScheme.light.onPrimary,
    textStyle: TextStyle(fontSize: AppSizes.md),
    elevation: 0,
  ),
);

final TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    overlayColor: WidgetStateProperty.all(Colors.transparent),
    splashFactory: NoSplash.splashFactory,
  ),
);

final ThemeData lightTheme = ThemeData(
  colorScheme: AppColorScheme.light,
  scaffoldBackgroundColor: AppColorScheme.light.surface,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColorScheme.light.primary,
    foregroundColor: AppColorScheme.light.onPrimary,
  ),
  elevatedButtonTheme: elevatedButtonTheme,
  textButtonTheme: textButtonTheme,
);
