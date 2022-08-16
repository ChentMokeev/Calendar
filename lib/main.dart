import 'package:flutter/material.dart';
import 'package:test_calendar/resouces/calendar_text_styles.dart';
import 'package:test_calendar/routes/routes.dart';
import 'package:test_calendar/routes/routes.gr.dart';

part 'utils/app_bar_theme.dart';

void main() {
  runApp(const MyApp());
}

final appRouter = MobileAppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: myAppBarTheme,
        scaffoldBackgroundColor: Colors.white,
      ),
      themeMode: ThemeMode.system,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      routeInformationProvider: appRouter.routeInfoProvider(),
      debugShowCheckedModeBanner: false,
    );
  }
}
