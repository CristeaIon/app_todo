import 'package:auto_route/auto_route.dart';

import '../../features/onboarding/onboarding.dart';
import '../../features/onboarding/welcome.dart';
import '../splash/splash.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: UpTodoSplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: WelcomeRoute.page),
      ];
}
