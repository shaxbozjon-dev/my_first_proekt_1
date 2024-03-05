

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:pdaftar/screen/begin/sign_in.dart'as _i1;
import 'package:pdaftar/screen/begin/sign_Up.dart'as _i2;

import 'package:pdaftar/screen/screen_c.dart'as _i3;

import '../screen/begin/sign_in.dart';
import '../screen/begin/sign_up.dart';

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RouteA.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(routeData: routeData, child: _i1.SignIn());
    },
    RouteB.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(routeData: routeData, child: _i2.SignUp());
    },
    RouteC.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(routeData: routeData, child: _i3.ScreenC());
    },
  };
}

class RouteA extends _i4.PageRouteInfo<void> {
  RouteA({List<_i4.PageRouteInfo>? children})
      : super(RouteA.name, initialChildren: children);
  static const String name = 'SignIn';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

class RouteB extends _i4.PageRouteInfo<void> {
  RouteB({List<_i4.PageRouteInfo>? children})
      : super(RouteB.name, initialChildren: children);
  static const String name = 'SignUp';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

class RouteC extends _i4.PageRouteInfo<void> {
  RouteC({List<_i4.PageRouteInfo>? children})
      : super(RouteC.name, initialChildren: children);
  static const String name = 'RouteC';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
