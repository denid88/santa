import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:santa/src/presentation/features/christmas_list/screens/christmas_list_screen.dart';
import 'package:santa/src/presentation/features/splash/screens/splash_screen.dart';

part 'app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerConfig = GoRouter(
  initialLocation: AppRoutes.getPath(AppRoutes.splash),
  debugLogDiagnostics: false,
  navigatorKey: _rootNavigatorKey,
  redirect: (context, state) {
    return null;
  },
  routes: [
    GoRoute(
      name: AppRoutes.splash,
      path: AppRoutes.getPath(AppRoutes.splash),
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.christmasList,
      path: AppRoutes.getPath(AppRoutes.christmasList),
      builder: (BuildContext context, GoRouterState state) {
        return const ChristmasListScreen();
      },
    ),
  ],
  errorBuilder: (context, state) => const Placeholder(),
);
