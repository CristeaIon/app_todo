import 'package:app_todo/core/app_todo.dart';
import 'package:flutter/material.dart';

import 'core/navigation/app_router.dart';

void main() {
  final appRouter = AppRouter();
  runApp(AppTodo(router: appRouter));
}
