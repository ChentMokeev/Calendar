import 'package:auto_route/auto_route.dart';

import '../feature/calendar/presentation/pages/main_screen.dart';
import '../feature/calendar/presentation/pages/navigation_layer.dart';

export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<String>(
      page: NavigationLayer,
      path: '/',
      initial: true,
      children: [
        AutoRoute(
          page: MainScreen,
          path: 'calendar',
          name: 'Calendar',
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'Search',
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'Messages',
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'Profile',
        ),
      ],
    )
  ],
)
class $MobileAppRouter {}
