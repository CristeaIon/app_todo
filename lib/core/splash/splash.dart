import 'package:app_todo/core/extensions/context.dart';
import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:app_todo/core/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class UpTodoSplashScreen extends StatelessWidget {
  const UpTodoSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      AutoRouter.of(context).replace(const OnboardingRoute());
    });
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
