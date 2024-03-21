import 'package:flutter/material.dart';

class AppTodoTheme {
  static ThemeData black() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      scaffoldBackgroundColor: Colors.black,
      typography: Typography.material2021(),
      textTheme: const TextTheme(
        displaySmall: TextStyle(
          fontSize: 40,
          color: Colors.white,
        ),
      ),
      useMaterial3: true,
    );
  }
}
