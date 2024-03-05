
import 'package:auto_route/auto_route.dart';

import 'package:pdaftar/screen/screen_a.dart';
import '../screen/begin/sign_Up.dart';
import '../screen/begin/sign_in.dart';
import 'app_router.gr.dart';
import '../screen/screen_b.dart';
import '../screen/screen_c.dart';
import 'app_router.gr.dart';
class AppRouter extends $AppRouter{
List <AutoRoute>get routes=>[
  AutoRoute(page: RouteA.page,initial: true),
  AutoRoute(page: RouteB.page),
  AutoRoute(page: RouteC.page),

];

}