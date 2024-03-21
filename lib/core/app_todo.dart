import 'package:app_todo/core/app_todo_theme.dart';
import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:app_todo/core/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppTodo extends StatelessWidget {
  const AppTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppTodo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        L.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: L.delegate.supportedLocales,
      theme: AppTodoTheme.black(),
      home: const UpTodoSplash(),
    );
  }
}
