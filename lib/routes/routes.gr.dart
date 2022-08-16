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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../feature/add_event/presentation/pages/add_event_bottom_sheet.dart'
    as _i4;
import '../feature/add_event/presentation/pages/location_bottom_sheet.dart'
    as _i7;
import '../feature/add_event/presentation/pages/marks_bottom_sheet.dart' as _i8;
import '../feature/add_event/presentation/pages/members_bottom_sheet.dart'
    as _i6;
import '../feature/add_event/presentation/pages/privacy_bottom_sheet.dart'
    as _i9;
import '../feature/add_event/presentation/pages/repeat_bottom_sheet.dart'
    as _i5;
import '../feature/calendar/presentation/pages/main_screen.dart' as _i3;
import '../feature/calendar/presentation/pages/navigation_layer.dart' as _i1;
import '../utils/plug_in_screen.dart' as _i10;
import 'routes.dart' as _i2;

class MobileAppRouter extends _i11.RootStackRouter {
  MobileAppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    NavigationLayerRoute.name: (routeData) {
      return _i11.MaterialPageX<String>(
          routeData: routeData, child: const _i1.NavigationLayer());
    },
    Calendar.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Search.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Messages.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterScreen());
    },
    Profile.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    MainScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainScreen());
    },
    AddEventBottomSheetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AddEventBottomSheet());
    },
    RepeatBottomSheetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RepeatBottomSheet());
    },
    MembersBottomSheetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MembersBottomSheet());
    },
    LocationBottomSheetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.LocationBottomSheet());
    },
    MarkBottomSheetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.MarkBottomSheet());
    },
    PrivacyBottomSheetRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PrivacyBottomSheet());
    },
    PlugInRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.PlugIn());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(NavigationLayerRoute.name, path: '/', children: [
          _i11.RouteConfig(Calendar.name,
              path: 'calendar',
              parent: NavigationLayerRoute.name,
              children: [
                _i11.RouteConfig(MainScreenRoute.name,
                    path: '', parent: Calendar.name),
                _i11.RouteConfig(AddEventBottomSheetRoute.name,
                    path: 'add_event', parent: Calendar.name),
                _i11.RouteConfig(RepeatBottomSheetRoute.name,
                    path: 'repeat', parent: Calendar.name),
                _i11.RouteConfig(MembersBottomSheetRoute.name,
                    path: 'members', parent: Calendar.name),
                _i11.RouteConfig(LocationBottomSheetRoute.name,
                    path: 'location', parent: Calendar.name),
                _i11.RouteConfig(MarkBottomSheetRoute.name,
                    path: 'marks', parent: Calendar.name),
                _i11.RouteConfig(PrivacyBottomSheetRoute.name,
                    path: 'privacy', parent: Calendar.name)
              ]),
          _i11.RouteConfig(Search.name,
              path: 'search',
              parent: NavigationLayerRoute.name,
              children: [
                _i11.RouteConfig(PlugInRoute.name,
                    path: '', parent: Search.name)
              ]),
          _i11.RouteConfig(Messages.name,
              path: 'messages', parent: NavigationLayerRoute.name),
          _i11.RouteConfig(Profile.name,
              path: 'profile',
              parent: NavigationLayerRoute.name,
              children: [
                _i11.RouteConfig(PlugInRoute.name,
                    path: '', parent: Profile.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.NavigationLayer]
class NavigationLayerRoute extends _i11.PageRouteInfo<void> {
  const NavigationLayerRoute({List<_i11.PageRouteInfo>? children})
      : super(NavigationLayerRoute.name, path: '/', initialChildren: children);

  static const String name = 'NavigationLayerRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Calendar extends _i11.PageRouteInfo<void> {
  const Calendar({List<_i11.PageRouteInfo>? children})
      : super(Calendar.name, path: 'calendar', initialChildren: children);

  static const String name = 'Calendar';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Search extends _i11.PageRouteInfo<void> {
  const Search({List<_i11.PageRouteInfo>? children})
      : super(Search.name, path: 'search', initialChildren: children);

  static const String name = 'Search';
}

/// generated route for
/// [_i2.EmptyRouterScreen]
class Messages extends _i11.PageRouteInfo<void> {
  const Messages() : super(Messages.name, path: 'messages');

  static const String name = 'Messages';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Profile extends _i11.PageRouteInfo<void> {
  const Profile({List<_i11.PageRouteInfo>? children})
      : super(Profile.name, path: 'profile', initialChildren: children);

  static const String name = 'Profile';
}

/// generated route for
/// [_i3.MainScreen]
class MainScreenRoute extends _i11.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i4.AddEventBottomSheet]
class AddEventBottomSheetRoute extends _i11.PageRouteInfo<void> {
  const AddEventBottomSheetRoute()
      : super(AddEventBottomSheetRoute.name, path: 'add_event');

  static const String name = 'AddEventBottomSheetRoute';
}

/// generated route for
/// [_i5.RepeatBottomSheet]
class RepeatBottomSheetRoute extends _i11.PageRouteInfo<void> {
  const RepeatBottomSheetRoute()
      : super(RepeatBottomSheetRoute.name, path: 'repeat');

  static const String name = 'RepeatBottomSheetRoute';
}

/// generated route for
/// [_i6.MembersBottomSheet]
class MembersBottomSheetRoute extends _i11.PageRouteInfo<void> {
  const MembersBottomSheetRoute()
      : super(MembersBottomSheetRoute.name, path: 'members');

  static const String name = 'MembersBottomSheetRoute';
}

/// generated route for
/// [_i7.LocationBottomSheet]
class LocationBottomSheetRoute extends _i11.PageRouteInfo<void> {
  const LocationBottomSheetRoute()
      : super(LocationBottomSheetRoute.name, path: 'location');

  static const String name = 'LocationBottomSheetRoute';
}

/// generated route for
/// [_i8.MarkBottomSheet]
class MarkBottomSheetRoute extends _i11.PageRouteInfo<void> {
  const MarkBottomSheetRoute()
      : super(MarkBottomSheetRoute.name, path: 'marks');

  static const String name = 'MarkBottomSheetRoute';
}

/// generated route for
/// [_i9.PrivacyBottomSheet]
class PrivacyBottomSheetRoute extends _i11.PageRouteInfo<void> {
  const PrivacyBottomSheetRoute()
      : super(PrivacyBottomSheetRoute.name, path: 'privacy');

  static const String name = 'PrivacyBottomSheetRoute';
}

/// generated route for
/// [_i10.PlugIn]
class PlugInRoute extends _i11.PageRouteInfo<void> {
  const PlugInRoute() : super(PlugInRoute.name, path: '');

  static const String name = 'PlugInRoute';
}
