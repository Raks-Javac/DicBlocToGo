import 'package:dict_app/features/views/details_screen.dart';
import 'package:dict_app/features/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const String initialHomeRoute = '/';
const String detailsRoute = 'details';

class DRouterClass {
  DRouterClass._();
  static DRouterClass routerInstance = DRouterClass._();
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: initialHomeRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const DictionaryHome();
        },
        routes: <RouteBase>[
          GoRoute(
            path: detailsRoute,
            builder: (BuildContext context, GoRouterState state) {
              return const DictionaryWordDetailsScreen();
            },
          ),
        ],
      ),
    ],
  );
}
