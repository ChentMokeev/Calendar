import 'package:auto_route/auto_route.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/add_event_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/location_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/marks_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/members_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/privacy_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/repeat_bottom_sheet.dart';
import 'package:test_calendar/feature/calendar/presentation/pages/main_screen.dart';
import 'package:test_calendar/feature/calendar/presentation/pages/navigation_layer.dart';
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
          path: 'search',
          name: 'Search',
          children: [
            AutoRoute(
              path: '',
              page: PlugIn,
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
