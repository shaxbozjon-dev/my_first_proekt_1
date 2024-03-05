import 'package:auto_route/auto_route.dart' as _i4;
import 'package:pdaftar/screen/begin/sign_in.dart' as _i1;
import 'package:pdaftar/screen/begin/sign_Up.dart' as _i2;

import 'package:pdaftar/screen/menu/menu.dart' as _i3;
import 'package:pdaftar/screen/menu/mainning.dart' as _i5;
import 'package:pdaftar/screen/menu/Profil.dart' as _i6;
import 'package:pdaftar/screen/menu/Star.dart' as _i7;
import 'package:pdaftar/screen/menu/transfer.dart' as _i8;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RouteA.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
          routeData: routeData, child: _i1.SignIn());
    },
    RouteB.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
          routeData: routeData, child: _i2.SignUp());
    },
    RouteC.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
          routeData: routeData, child: _i3.Menu());
    },
    RouteD.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
          routeData: routeData, child: _i5.Main());
    },
    RouteE.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
          routeData: routeData, child: _i6.Profil());
    },
    RouteF.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
          routeData: routeData, child: _i7.Star());
    },
    RouteG.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
          routeData: routeData, child: _i8.Transfer());
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
  static const String name = 'Menu';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

class RouteD extends _i4.PageRouteInfo<void> {
  RouteD({List<_i4.PageRouteInfo>? children})
      : super(RouteD.name, initialChildren: children);
  static const String name = 'Maining';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

class RouteE extends _i4.PageRouteInfo<void> {
  RouteE({List<_i4.PageRouteInfo>? children})
      : super(RouteE.name, initialChildren: children);
  static const String name = 'Profil';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

class RouteF extends _i4.PageRouteInfo<void> {
  RouteF({List<_i4.PageRouteInfo>? children})
      : super(RouteF.name, initialChildren: children);
  static const String name = 'Star';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

class RouteG extends _i4.PageRouteInfo<void> {
  RouteG({List<_i4.PageRouteInfo>? children})
      : super(RouteG.name, initialChildren: children);
  static const String name = 'Transfer';
  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
