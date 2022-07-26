import 'package:flutter/material.dart';
import 'package:test_calendar/routes/routes.dart';

import 'routes/routes.gr.dart';

void main() {
  runApp(const MyApp());
}

final appRouter = MobileAppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      routeInformationProvider: appRouter.routeInfoProvider(),
    );
  }
}
