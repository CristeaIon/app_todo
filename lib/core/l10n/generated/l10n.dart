// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L {
  L();

  static L? _current;

  static L get current {
    assert(_current != null,
        'No instance of L was loaded. Try to initialize the L delegate before accessing L.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L();
      L._current = instance;

      return instance;
    });
  }

  static L of(BuildContext context) {
    final instance = L.maybeOf(context);
    assert(instance != null,
        'No instance of L present in the widget tree. Did you add L.delegate in localizationsDelegates?');
    return instance!;
  }

  static L? maybeOf(BuildContext context) {
    return Localizations.of<L>(context, L);
  }

  /// `UpTodo`
  String get title {
    return Intl.message(
      'UpTodo',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Manage your tasks`
  String get manageTasks {
    return Intl.message(
      'Manage your tasks',
      name: 'manageTasks',
      desc: '',
      args: [],
    );
  }

  /// `You can easily manage all of your daily tasks in DoMe for free`
  String get manageTasksMessage {
    return Intl.message(
      'You can easily manage all of your daily tasks in DoMe for free',
      name: 'manageTasksMessage',
      desc: '',
      args: [],
    );
  }

  /// `Create daily routine`
  String get createRoutine {
    return Intl.message(
      'Create daily routine',
      name: 'createRoutine',
      desc: '',
      args: [],
    );
  }

  /// `In Uptodo you can create your personalized routine to stay productive`
  String get createRoutineMessage {
    return Intl.message(
      'In Uptodo you can create your personalized routine to stay productive',
      name: 'createRoutineMessage',
      desc: '',
      args: [],
    );
  }

  /// `Organize your tasks`
  String get organizeTasks {
    return Intl.message(
      'Organize your tasks',
      name: 'organizeTasks',
      desc: '',
      args: [],
    );
  }

  /// `You can organize your daily tasks by adding your tasks into separate categories`
  String get organizeTasksMessage {
    return Intl.message(
      'You can organize your daily tasks by adding your tasks into separate categories',
      name: 'organizeTasksMessage',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to UpTodo`
  String get welcome {
    return Intl.message(
      'Welcome to UpTodo',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Please login to your account or create new account to continue`
  String get welcomeMessage {
    return Intl.message(
      'Please login to your account or create new account to continue',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L> load(Locale locale) => L.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
