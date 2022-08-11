import 'package:auto_route/auto_route.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/add_event_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/location_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/marks_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/members_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/privacy_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/repeat_bottom_sheet.dart';
import 'package:test_calendar/feature/calendar/presentation/pages/main_screen.dart';
import 'package:test_calendar/feature/calendar/presentation/pages/navigation_layer.dart';

export 'package:auto_route/auto_route.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<String>(
      page: NavigationLayer,
      path: '/',
      children: [
        AutoRoute(
          initial: true,
          page: EmptyRouterPage,
          path: 'calendar',
          name: 'Calendar',
          children: [
            AutoRoute(
              path: '',
              page: MainScreen,
            ),
            AutoRoute(
              path: 'add_event',
              page: AddEventBottomSheet,
            ),
            AutoRoute(
              path: 'repeat',
              page: RepeatBottomSheet,
            ),
            AutoRoute(
              path: 'members',
              page: MembersBottomSheet,
            ),
            AutoRoute(
              path: 'location',
              page: LocationBottomSheet,
            ),
            AutoRoute(
              path: 'marks',
              page: MarkBottomSheet,
            ),
            AutoRoute(
              path: 'privacy',
              page: PrivacyBottomSheet,
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: '',
          name: 'Search',
          children: [],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: '',
          name: 'Messages',
          children: [],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: '',
          name: 'Profile',
          children: [],
        ),
      ],
    )
  ],
)
class $MobileAppRouter {}
