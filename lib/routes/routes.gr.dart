// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../feature/presentation/screens/calendar/calendar_screen.dart' as _i3;
import '../feature/presentation/screens/edit_profile/reduct_profile_page.dart'
    as _i8;
import '../feature/presentation/screens/meeting_info/meeting_message_page.dart'
    as _i4;
import '../feature/presentation/screens/messages/messages_page.dart' as _i6;
import '../feature/presentation/screens/navigation/navigation_layer.dart'
    as _i1;
import '../feature/presentation/screens/profile/profile_page.dart' as _i7;
import '../feature/presentation/screens/search/search_page.dart' as _i5;
import 'routes.dart' as _i2;

class MobileAppRouter extends _i9.RootStackRouter {
  MobileAppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    NavigationLayerRoute.name: (routeData) {
      return _i9.CustomPage<String>(
          routeData: routeData,
          child: const _i1.NavigationLayer(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    Calendar.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    Search.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    Messages.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    Profile.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    CalendarScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.CalendarScreen(),
          opaque: true,
          barrierDismissible: false);
    },
    MeetingMessagePageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.MeetingMessagePage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    SearchPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SearchPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    Calendar_of.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.CalendarScreen(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    MessagesPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.MessagesPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ProfilePage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ReductProfilePageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.ReductProfilePage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(NavigationLayerRoute.name, path: '/', children: [
          _i9.RouteConfig('#redirect',
              path: '',
              parent: NavigationLayerRoute.name,
              redirectTo: 'calendar',
              fullMatch: true),
          _i9.RouteConfig(Calendar.name,
              path: 'calendar',
              parent: NavigationLayerRoute.name,
              children: [
                _i9.RouteConfig(CalendarScreenRoute.name,
                    path: '', parent: Calendar.name),
                _i9.RouteConfig(MeetingMessagePageRoute.name,
                    path: 'meeting_info', parent: Calendar.name)
              ]),
          _i9.RouteConfig(Search.name,
              path: 'search',
              parent: NavigationLayerRoute.name,
              children: [
                _i9.RouteConfig(SearchPageRoute.name,
                    path: '', parent: Search.name),
                _i9.RouteConfig(MeetingMessagePageRoute.name,
                    path: 'meeting_info', parent: Search.name),
                _i9.RouteConfig(Calendar_of.name,
                    path: 'calendar_of', parent: Search.name)
              ]),
          _i9.RouteConfig(Messages.name,
              path: 'messages',
              parent: NavigationLayerRoute.name,
              children: [
                _i9.RouteConfig(MessagesPageRoute.name,
                    path: '', parent: Messages.name),
                _i9.RouteConfig(MeetingMessagePageRoute.name,
                    path: 'meeting_info', parent: Messages.name)
              ]),
          _i9.RouteConfig(Profile.name,
              path: 'profile',
              parent: NavigationLayerRoute.name,
              children: [
                _i9.RouteConfig(ProfilePageRoute.name,
                    path: '', parent: Profile.name),
                _i9.RouteConfig(ReductProfilePageRoute.name,
                    path: 'edit_profile', parent: Profile.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.NavigationLayer]
class NavigationLayerRoute extends _i9.PageRouteInfo<void> {
  const NavigationLayerRoute({List<_i9.PageRouteInfo>? children})
      : super(NavigationLayerRoute.name, path: '/', initialChildren: children);

  static const String name = 'NavigationLayerRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Calendar extends _i9.PageRouteInfo<void> {
  const Calendar({List<_i9.PageRouteInfo>? children})
      : super(Calendar.name, path: 'calendar', initialChildren: children);

  static const String name = 'Calendar';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Search extends _i9.PageRouteInfo<void> {
  const Search({List<_i9.PageRouteInfo>? children})
      : super(Search.name, path: 'search', initialChildren: children);

  static const String name = 'Search';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Messages extends _i9.PageRouteInfo<void> {
  const Messages({List<_i9.PageRouteInfo>? children})
      : super(Messages.name, path: 'messages', initialChildren: children);

  static const String name = 'Messages';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Profile extends _i9.PageRouteInfo<void> {
  const Profile({List<_i9.PageRouteInfo>? children})
      : super(Profile.name, path: 'profile', initialChildren: children);

  static const String name = 'Profile';
}

/// generated route for
/// [_i3.CalendarScreen]
class CalendarScreenRoute extends _i9.PageRouteInfo<void> {
  const CalendarScreenRoute() : super(CalendarScreenRoute.name, path: '');

  static const String name = 'CalendarScreenRoute';
}

/// generated route for
/// [_i4.MeetingMessagePage]
class MeetingMessagePageRoute extends _i9.PageRouteInfo<void> {
  const MeetingMessagePageRoute()
      : super(MeetingMessagePageRoute.name, path: 'meeting_info');

  static const String name = 'MeetingMessagePageRoute';
}

/// generated route for
/// [_i5.SearchPage]
class SearchPageRoute extends _i9.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i3.CalendarScreen]
class Calendar_of extends _i9.PageRouteInfo<void> {
  const Calendar_of() : super(Calendar_of.name, path: 'calendar_of');

  static const String name = 'Calendar_of';
}

/// generated route for
/// [_i6.MessagesPage]
class MessagesPageRoute extends _i9.PageRouteInfo<void> {
  const MessagesPageRoute() : super(MessagesPageRoute.name, path: '');

  static const String name = 'MessagesPageRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i9.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: '');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i8.ReductProfilePage]
class ReductProfilePageRoute extends _i9.PageRouteInfo<void> {
  const ReductProfilePageRoute()
      : super(ReductProfilePageRoute.name, path: 'edit_profile');

  static const String name = 'ReductProfilePageRoute';
}
