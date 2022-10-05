import 'package:auto_route/auto_route.dart';
import 'package:test_calendar/feature/presentation/screens/calendar/calendar_screen.dart';
import 'package:test_calendar/feature/presentation/screens/edit_profile/reduct_profile_page.dart';
import 'package:test_calendar/feature/presentation/screens/meeting_info/meeting_message_page.dart';
import 'package:test_calendar/feature/presentation/screens/messages/messages_page.dart';
import 'package:test_calendar/feature/presentation/screens/navigation/navigation_layer.dart';
import 'package:test_calendar/feature/presentation/screens/profile/profile_page.dart';
import 'package:test_calendar/feature/presentation/screens/search/search_page.dart';

export 'package:auto_route/auto_route.dart';

export 'routes.gr.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Screen,Route',
  transitionsBuilder: TransitionsBuilders.slideLeft,
  routes: <AutoRoute>[
    AutoRoute<String>(
      page: NavigationLayer,
      path: '/',
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'calendar',
          name: 'Calendar',
          initial: true,
          children: [
            CustomRoute(
              path: '',
              page: CalendarScreen,
            ),
            AutoRoute(
              page: MeetingMessagePage,
              path: 'meeting_info',
            )
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
            ),
            AutoRoute(
              page: MeetingMessagePage,
              path: 'meeting_info',
            ),
            AutoRoute(
              page: CalendarScreen,
              path: 'calendar_of',
              name: 'calendar_of',
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
              page: MessagesPage,
            ),
            AutoRoute(
              page: MeetingMessagePage,
              path: 'meeting_info',
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'profile',
          name: 'Profile',
          children: [
            AutoRoute(
              path: '',
              page: ProfilePage,
            ),
            AutoRoute(
              page: ReductProfilePage,
              path: 'edit_profile',
            ),
          ],
        ),
      ],
    )
  ],
)
class $MobileAppRouter {}
