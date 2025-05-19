import 'package:auto_route/auto_route.dart';
import 'package:riverpod_mvvm/core/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginScreenRoute.page, initial: true),
    AutoRoute(page: HomeScreenRoute.page),
  ];
}
