import 'package:flutter/material.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';
import 'package:test_calendar/routes/routes.dart';

class NavigationLayer extends StatefulWidget {
  const NavigationLayer({Key? key}) : super(key: key);

  @override
  State<NavigationLayer> createState() => _NavigationLayerState();
}

class _NavigationLayerState extends State<NavigationLayer> {
  @override
  Widget build(BuildContext context) {
    final locale = L10n.of(context);
    return AutoTabsRouter.pageView(
      homeIndex: 2,
      routes: const [
        Calendar(),
        Messages(),
        Search(),
        Profile(),
      ],
      builder: (context, child, _) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.tabsRouter.activeIndex,
            onTap: context.tabsRouter.setActiveIndex,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.add), label: locale.calendar),
              BottomNavigationBarItem(
                icon: const Icon(Icons.notifications_outlined),
                label: locale.messages,
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.search_outlined),
                  label: locale.search),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person_outlined),
                  label: locale.profile),
            ],
          ),
        );
      },
    );
  }
}
