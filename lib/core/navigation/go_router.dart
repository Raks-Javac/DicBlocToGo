import 'package:dict_app/features/home/views/details_screen.dart';
import 'package:dict_app/features/home/views/home_screen.dart';
import 'package:dict_app/features/onboarding/language_screen.dart';
import 'package:dict_app/features/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/search_word_model.dart';

const String initialHomeRoute = '/';
const String dictionaryHomeRoute = '/home';
const String languageViewRoute = 'lang';
const String detailsRoute = 'details';

class DRouterClass {
  DRouterClass._();

  static GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey =
  GlobalKey<ScaffoldMessengerState>();
  static DRouterClass routerInstance = DRouterClass._();
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: initialHomeRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreenView();
          },
          routes: [
            GoRoute(
              path: languageViewRoute,
              builder: (BuildContext context, GoRouterState state) {
                return const LanguageView();
              },
            ),
          ]),
      GoRoute(
        path: dictionaryHomeRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const DictionaryHomeView();
        },
        routes: <RouteBase>[
          GoRoute(
            name: 'detail',
            path: detailsRoute,
            builder: (BuildContext context, GoRouterState state) {
              SearchWordModelResponse wordResponse =
              state.extra as SearchWordModelResponse;
              return DictionaryWordDetailsScreen(
                object: wordResponse,
              );
            },
          ),
        ],
      ),
    ],
  );
}
