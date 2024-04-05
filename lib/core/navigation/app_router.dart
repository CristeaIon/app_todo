import 'package:auto_route/auto_route.dart';

import '../../features/auth/create_account.dart';
import '../../features/auth/login.dart';
import '../../features/calendar/calendar.dart';
import '../../features/focus/focus.dart';
import '../../features/home/home.dart';
import '../../features/index/index.dart';
import '../../features/onboarding/onboarding.dart';
import '../../features/onboarding/welcome.dart';
import '../../features/profile/profile.dart';
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
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(page: IndexRoute.page),
            AutoRoute(page: CalendarRoute.page),
            AutoRoute(page: FocusRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
