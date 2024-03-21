import 'package:flutter/material.dart';

class AppTodoTheme {
  static ThemeData black() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      scaffoldBackgroundColor: Colors.black,
      useMaterial3: true,
    );
  }
}
