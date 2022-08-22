import 'package:auto_route/auto_route.dart';
import 'package:test_calendar/feature/calendar/presentation/pages/main_screen.dart';
import 'package:test_calendar/feature/calendar/presentation/pages/navigation_layer.dart';
import 'package:test_calendar/feature/search/presentation/pages/search_page.dart';
import 'package:test_calendar/utils/plug_in_screen.dart';

export 'package:auto_route/auto_route.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<String>(
      initial: true,
      page: NavigationLayer,
      path: '/',
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'calendar',
          name: 'Calendar',
          children: [
            AutoRoute(
              path: '',
              page: MainScreen,
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'search',
          name: 'Search',
          children: [
            AutoRoute(
              path: '',
              page: SearchPage,
            )
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'messages',
          name: 'Messages',
          children: [
            AutoRoute(
              path: '',
              page: PlugIn,
            )
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'profile',
          name: 'Profile',
          children: [
            AutoRoute(
              path: '',
              page: PlugIn,
            )
          ],
        ),
      ],
    )
  ],
)
class $MobileAppRouter {}
