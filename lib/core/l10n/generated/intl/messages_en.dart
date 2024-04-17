// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(method) => "${method} with Apple";

  static String m1(method) => "${method} with Google";

  static String m2(count) => "${count} Task done";

  static String m3(count) => "${count} Task left";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About US"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "alreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "appSettings": MessageLookupByLibrary.simpleMessage("App Settings"),
        "apple": m0,
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "calendar": MessageLookupByLibrary.simpleMessage("Calendar"),
        "changeAccountImg":
            MessageLookupByLibrary.simpleMessage("Change Account Image"),
        "changeAccountName":
            MessageLookupByLibrary.simpleMessage("Change Account Name"),
        "changeAccountPass":
            MessageLookupByLibrary.simpleMessage("Change Account Password"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
        "createRoutine":
            MessageLookupByLibrary.simpleMessage("Create daily routine"),
        "createRoutineMessage": MessageLookupByLibrary.simpleMessage(
            "In Uptodo you can create your personalized routine to stay productive"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Don`t have an account?"),
        "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
        "focus": MessageLookupByLibrary.simpleMessage("Focus"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
        "google": m1,
        "helpFeedback": MessageLookupByLibrary.simpleMessage("Help & Feedback"),
        "index": MessageLookupByLibrary.simpleMessage("Index"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Log out"),
        "manageTasks":
            MessageLookupByLibrary.simpleMessage("Manage your tasks"),
        "manageTasksMessage": MessageLookupByLibrary.simpleMessage(
            "You can easily manage all of your daily tasks in DoMe for free"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "organizeTasks":
            MessageLookupByLibrary.simpleMessage("Organize your tasks"),
        "organizeTasksMessage": MessageLookupByLibrary.simpleMessage(
            "You can organize your daily tasks by adding your tasks into separate categories"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "support": MessageLookupByLibrary.simpleMessage("Support US"),
        "tapToAdd":
            MessageLookupByLibrary.simpleMessage("Tap + to add your tasks"),
        "taskDone": m2,
        "taskLeft": m3,
        "title": MessageLookupByLibrary.simpleMessage("UpTodo"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome to UpTodo"),
        "welcomeMessage": MessageLookupByLibrary.simpleMessage(
            "Please login to your account or create new account to continue"),
        "whatTodo": MessageLookupByLibrary.simpleMessage(
            "What do you want to do today?")
      };
}
