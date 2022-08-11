import 'package:flutter/material.dart';
import 'package:test_calendar/resouces/calendar_text_styles.dart';
import 'package:test_calendar/routes/routes.dart';
import 'package:test_calendar/routes/routes.gr.dart';

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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: CalendarTextStyles.fSize18Weight600,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      themeMode: ThemeMode.system,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      routeInformationProvider: appRouter.routeInfoProvider(),
    );
  }
}
