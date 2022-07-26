// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../feature/calendar/presentation/pages/main_screen.dart' as _i2;
import '../feature/calendar/presentation/pages/navigation_layer.dart' as _i1;
import 'routes.dart' as _i3;

class MobileAppRouter extends _i4.RootStackRouter {
  MobileAppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    NavigationLayerRoute.name: (routeData) {
      return _i4.MaterialPageX<String>(
          routeData: routeData, child: const _i1.NavigationLayer());
    },
    Calendar.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MainScreen());
    },
    Search.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    Messages.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    Profile.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(NavigationLayerRoute.name, path: '/', children: [
          _i4.RouteConfig(Calendar.name,
              path: 'calendar', parent: NavigationLayerRoute.name),
          _i4.RouteConfig(Search.name,
              path: 'empty-router-page', parent: NavigationLayerRoute.name),
          _i4.RouteConfig(Messages.name,
              path: 'empty-router-page', parent: NavigationLayerRoute.name),
          _i4.RouteConfig(Profile.name,
              path: 'empty-router-page', parent: NavigationLayerRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.NavigationLayer]
class NavigationLayerRoute extends _i4.PageRouteInfo<void> {
  const NavigationLayerRoute({List<_i4.PageRouteInfo>? children})
      : super(NavigationLayerRoute.name, path: '/', initialChildren: children);

  static const String name = 'NavigationLayerRoute';
}

/// generated route for
/// [_i2.MainScreen]
class Calendar extends _i4.PageRouteInfo<void> {
  const Calendar() : super(Calendar.name, path: 'calendar');

  static const String name = 'Calendar';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class Search extends _i4.PageRouteInfo<void> {
  const Search() : super(Search.name, path: 'empty-router-page');

  static const String name = 'Search';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class Messages extends _i4.PageRouteInfo<void> {
  const Messages() : super(Messages.name, path: 'empty-router-page');

  static const String name = 'Messages';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class Profile extends _i4.PageRouteInfo<void> {
  const Profile() : super(Profile.name, path: 'empty-router-page');

  static const String name = 'Profile';
}
