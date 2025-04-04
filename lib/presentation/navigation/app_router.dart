import 'package:auto_route/auto_route.dart';
import 'package:rick_and_morty_app/presentation/navigation/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/home',
      page: HomeRoute.page,
      initial: true,
      children: [
        AutoRoute(page: CharacterListRoute.page, initial: true),
        AutoRoute(page: SettingsRoute.page),
      ],
    ),
    AutoRoute(
      path: '/characters/:characterId',
      page: CharacterDetailsRoute.page,
    ),
    AutoRoute(page: NoConnectionRoute.page),
  ];
}
