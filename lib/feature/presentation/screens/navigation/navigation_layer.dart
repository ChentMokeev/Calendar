import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_calendar/core/resources/calendar_colors.dart';
import 'package:test_calendar/core/resources/calendar_text_styles.dart';
import 'package:test_calendar/feature/presentation/screens/navigation/vm.dart';
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
    return ChangeNotifierProvider(
      create: (context) => NavigationVM(),
      child: AutoTabsScaffold(
        routes: const [
          Calendar(),
          Messages(),
          Search(),
          Profile(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) =>
            context.watch<NavigationVM>().shouldHideBottomBar
                ? const SizedBox.shrink()
                : BottomNavigationBar(
                    onTap: tabsRouter.setActiveIndex,
                    currentIndex: tabsRouter.activeIndex,
                    type: BottomNavigationBarType.fixed,
                    unselectedItemColor: Colors.grey,
                    selectedItemColor: CalendarColors.txtBlue,
                    selectedLabelStyle: CalendarTextStyles.default12w500,
                    unselectedLabelStyle: CalendarTextStyles.default12w500,
                    items: [
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.add),
                        label: locale.calendar,
                      ),
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.notifications_outlined),
                        label: locale.messages,
                      ),
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.search_outlined),
                        label: locale.search,
                      ),
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.person_outlined),
                        label: locale.profile,
                      ),
                    ],
                  ),
      ),
    );
  }
}
