import 'package:app_todo/core/navigation/app_router.dart';
import 'package:app_todo/features/onboarding/widgets/page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/l10n/generated/l10n.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      physics: const NeverScrollableScrollPhysics(),
      pageSnapping: false,
      allowImplicitScrolling: true,
      controller: controller,
      onPageChanged: (value) {
        controller.jumpToPage(value);
      },
      childrenDelegate: SliverChildListDelegate.fixed(
        [
          OnboardingPage(
            title: L.of(context).manageTasks,
            message: L.of(context).manageTasksMessage,
            image: 'assets/images/onboarding_1.svg',
            onNext: () {
              controller.jumpToPage(controller.page!.ceil() + 1);
            },
          ),
          OnboardingPage(
            title: L.of(context).createRoutine,
            message: L.of(context).createRoutineMessage,
            image: 'assets/images/onboarding_2.svg',
            onBack: () {
              controller.jumpToPage(controller.page!.ceil() - 1);
            },
            onNext: () {
              controller.jumpToPage(controller.page!.ceil() + 1);
            },
          ),
          OnboardingPage(
            title: L.of(context).organizeTasks,
            message: L.of(context).organizeTasksMessage,
            image: 'assets/images/onboarding_3.svg',
            onBack: () {
              controller.jumpToPage(controller.page!.ceil() - 1);
            },
            onNext: () {
              AutoRouter.of(context).push(const WelcomeRoute());
            },
          ),
        ],
      ),
    );
  }
}
