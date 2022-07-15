import 'package:auto_route/auto_route.dart';

import '../feature/calendar/presentation/pages/main_screen.dart';

export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';
 
@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      path: '/',
      initial: true,
    )
    // AutoRoute(
    //   page: SettingsScreen,
    //   path: '/settings_screen',
    // ),
    // AutoRoute(
    //   page: PlugInScreen,
    //   path: '/plug_in',
    // ),
  ],
)

class $MobileAppRouter {}