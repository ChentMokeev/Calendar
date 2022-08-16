import 'package:flutter/material.dart';
import 'package:test_calendar/routes/routes.dart';

class NavigationLayer extends StatefulWidget {
  const NavigationLayer({Key? key}) : super(key: key);

  @override
  State<NavigationLayer> createState() => _NavigationLayerState();
}

class _NavigationLayerState extends State<NavigationLayer> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      homeIndex: 0,
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
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.add), label: 'Календарь'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined), label: 'Сообщения'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined), label: 'Поиск'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined), label: 'Профиль'),
            ],
          ),
        );
      },
    );
  }
}
