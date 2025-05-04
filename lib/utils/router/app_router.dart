import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'route_name.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: RouteNames.empty, page: ChatRoute.page, initial: true),
    RedirectRoute(path: '*', redirectTo: RouteNames.empty),
  ];
}
