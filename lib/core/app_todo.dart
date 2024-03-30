import 'package:app_todo/core/app_todo_theme.dart';
import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'navigation/app_router.dart';

class AppTodo extends StatelessWidget {
  const AppTodo({super.key, required this.router});
  final AppRouter router;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AppTodo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        L.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: L.delegate.supportedLocales,
      theme: AppTodoTheme.black(context),
      routerConfig: router.config(),
    );
  }
}
