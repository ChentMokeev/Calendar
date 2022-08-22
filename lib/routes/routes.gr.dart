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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../feature/calendar/presentation/pages/main_screen.dart' as _i3;
import '../feature/calendar/presentation/pages/navigation_layer.dart' as _i1;
import '../feature/search/presentation/pages/search_page.dart' as _i4;
import '../utils/plug_in_screen.dart' as _i5;
import 'routes.dart' as _i2;

class MobileAppRouter extends _i6.RootStackRouter {
  MobileAppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    NavigationLayerRoute.name: (routeData) {
      return _i6.MaterialPageX<String>(
          routeData: routeData, child: const _i1.NavigationLayer());
    },
    Calendar.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Search.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Messages.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Profile.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    MainScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainScreen());
    },
    SearchPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SearchPage());
    },
    PlugInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PlugIn());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(NavigationLayerRoute.name, path: '/', children: [
          _i6.RouteConfig(Calendar.name,
              path: 'calendar',
              parent: NavigationLayerRoute.name,
              children: [
                _i6.RouteConfig(MainScreenRoute.name,
                    path: '', parent: Calendar.name)
              ]),
          _i6.RouteConfig(Search.name,
              path: 'search',
              parent: NavigationLayerRoute.name,
              children: [
                _i6.RouteConfig(SearchPageRoute.name,
                    path: '', parent: Search.name)
              ]),
          _i6.RouteConfig(Messages.name,
              path: 'messages',
              parent: NavigationLayerRoute.name,
              children: [
                _i6.RouteConfig(PlugInRoute.name,
                    path: '', parent: Messages.name)
              ]),
          _i6.RouteConfig(Profile.name,
              path: 'profile',
              parent: NavigationLayerRoute.name,
              children: [
                _i6.RouteConfig(PlugInRoute.name,
                    path: '', parent: Profile.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.NavigationLayer]
class NavigationLayerRoute extends _i6.PageRouteInfo<void> {
  const NavigationLayerRoute({List<_i6.PageRouteInfo>? children})
      : super(NavigationLayerRoute.name, path: '/', initialChildren: children);

  static const String name = 'NavigationLayerRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Calendar extends _i6.PageRouteInfo<void> {
  const Calendar({List<_i6.PageRouteInfo>? children})
      : super(Calendar.name, path: 'calendar', initialChildren: children);

  static const String name = 'Calendar';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Search extends _i6.PageRouteInfo<void> {
  const Search({List<_i6.PageRouteInfo>? children})
      : super(Search.name, path: 'search', initialChildren: children);

  static const String name = 'Search';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Messages extends _i6.PageRouteInfo<void> {
  const Messages({List<_i6.PageRouteInfo>? children})
      : super(Messages.name, path: 'messages', initialChildren: children);

  static const String name = 'Messages';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Profile extends _i6.PageRouteInfo<void> {
  const Profile({List<_i6.PageRouteInfo>? children})
      : super(Profile.name, path: 'profile', initialChildren: children);

  static const String name = 'Profile';
}

/// generated route for
/// [_i3.MainScreen]
class MainScreenRoute extends _i6.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i4.SearchPage]
class SearchPageRoute extends _i6.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i5.PlugIn]
class PlugInRoute extends _i6.PageRouteInfo<void> {
  const PlugInRoute() : super(PlugInRoute.name, path: '');

  static const String name = 'PlugInRoute';
}
