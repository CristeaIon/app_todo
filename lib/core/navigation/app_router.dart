import 'package:auto_route/auto_route.dart';

import '../../features/auth/create_account.dart';
import '../../features/auth/login.dart';
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
        AutoRoute(page: CreateAccountRoute.page),
        AutoRoute(page: LoginRoute.page),
      ];
}
