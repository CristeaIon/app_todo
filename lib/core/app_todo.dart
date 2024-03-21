import 'package:app_todo/core/app_todo_theme.dart';
import 'package:flutter/material.dart';

class AppTodo extends StatelessWidget {
  const AppTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppTodo',
      theme: AppTodoTheme.black(),
    );
  }
}
