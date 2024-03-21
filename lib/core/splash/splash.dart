import 'package:app_todo/core/extensions/context.dart';
import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpTodoSplash extends StatelessWidget {
  const UpTodoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            SizedBox(height: context.height * .05),
            Text(
              L.of(context).title,
              style: context.textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
