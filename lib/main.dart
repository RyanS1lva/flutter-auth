import 'package:flutter/material.dart';

import 'lib.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AuthApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: AppColorScheme.light,
        scaffoldBackgroundColor: AppColorScheme.light.surface,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColorScheme.light.primary,
          foregroundColor: AppColorScheme.light.onPrimary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColorScheme.light.primary,
            foregroundColor: AppColorScheme.light.onPrimary,
            textStyle: TextStyle(fontSize: AppSizes.md),
            elevation: 0,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            splashFactory: NoSplash.splashFactory,
          ),
        ),
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.getAll(),
    );
  }
}
