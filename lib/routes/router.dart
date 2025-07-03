import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:technical_mobile/features/pages.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    CustomRoute<void>(
      page: SplashRoute.page,
      path: '/splash',
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: LoginRoute.page,
      path: '/login',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: RegisterRoute.page,
      path: '/register',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: ForgotPasswordRoute.page,
      path: '/forgot-password',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: ResetPasswordRoute.page,
      path: '/reset-password',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: HomeRoute.page,
      path: '/home',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ];
}
