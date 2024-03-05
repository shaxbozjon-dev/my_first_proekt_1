import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

class AppRouter extends $AppRouter {
  List<AutoRoute> get routes => [
        AutoRoute(page: RouteA.page, initial: true),
        AutoRoute(page: RouteB.page),
        AutoRoute(page: RouteC.page),
        AutoRoute(page: RouteD.page),
        AutoRoute(page: RouteE.page),
        AutoRoute(page: RouteF.page),
        AutoRoute(page: RouteG.page),
      ];
}
