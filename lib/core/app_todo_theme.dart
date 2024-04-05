import 'package:flutter/material.dart';

class AppTodoTheme {
  static ThemeData black(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      typography: Typography.material2021(),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStatePropertyAll(Colors.white),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Theme.of(context).colorScheme.primary,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white.withOpacity(.2),
        unselectedItemColor: Colors.white,
      ),
      //TODO(icristea): Find a way to inherit text theme
      textTheme: TextTheme(
        displaySmall: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.white),
        bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
        bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
        titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
      ),
      useMaterial3: true,
    );
  }
}
