import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:app_todo/core/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [IndexRoute(), CalendarRoute(), FocusRoute(), ProfileRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(           
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: L.of(context).index,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.calendar_month),
                label: L.of(context).calendar,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.access_time_rounded),
                label: L.of(context).focus,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.account_box_outlined),
                label: L.of(context).profile,
              ),
            ],
          ),
        );
      },
    );
  }
}
