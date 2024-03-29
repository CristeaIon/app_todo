import 'package:flutter/material.dart';

class AppTodoTheme {
  static ThemeData black(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      typography: Typography.material2021(),
      //TODO(icristea): Find a way to inherit text theme
      textTheme: TextTheme(
        displaySmall: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.white),
        bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
        // bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
      ),
      useMaterial3: true,
    );
  }
}
