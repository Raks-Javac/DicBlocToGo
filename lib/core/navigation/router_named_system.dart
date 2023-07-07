import 'dart:io';

import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/features/dashboard/main_dashboard.dart';
import 'package:dict_app/features/home/views/home_screen.dart';
import 'package:dict_app/features/home/views/widgets/details_screen.dart';
import 'package:dict_app/features/onboarding/onboard_username.dart';
import 'package:dict_app/features/onboarding/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class WRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case WRoutes.splashScreen:
        return getPageRoute(
          settings: settings,
          view: const SplashScreenView(),
        );
      case WRoutes.onboardUsername:
        return getPageRoute(
          settings: settings,
          view: const OnBoardUserName(),
        );
      case WRoutes.mainDashBoardView:
        return getPageRoute(
          settings: settings,
          view: const MainDashboardScreen(),
        );
      case WRoutes.dictionaryHomeRoute:
        return getPageRoute(
          settings: settings,
          view: const DictionaryHomeView(),
        );
      case WRoutes.detailsRoute:
        return getPageRoute(
          settings: settings,
          view: const DictionaryWordDetailsScreen(),
        );

      default:
        return getPageRoute(
          settings: settings,
          view: const DictionaryHomeView(),
        );
    }
  }

  static PageRoute<dynamic> getPageRoute({
    required RouteSettings settings,
    required Widget view,
  }) {
    return
//set your navigation based on platform for this app , the android dissolve animation was preffered
        Platform.isIOS
            ? CupertinoPageRoute(settings: settings, builder: (_) => view)
            : MaterialPageRoute(settings: settings, builder: (_) => view);
  }
}
