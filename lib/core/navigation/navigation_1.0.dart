import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WNavigator {
  WNavigator._();

  static final WNavigator instance = WNavigator._();
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static BuildContext appContext = navigatorKey!.currentContext!;

  void dismissKeyboard_1() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static void popSheet({BuildContext? context, dynamic routeMessage = ""}) {
    Navigator.pop(navigatorKey?.currentContext! ?? context!, routeMessage);
  }

  void closeDialog() {
    Navigator.of(navigatorKey!.currentContext!, rootNavigator: true).pop();
  }

  static Future push(dynamic routeClass) {
    return Navigator.push(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass));
  }

  static void pushAndReplace(dynamic routeClass) {
    Navigator.pushReplacement(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass));
  }

  static void pushAndRemoveUtil(dynamic routeClass) {
    Navigator.pushAndRemoveUntil(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass), (route) => false);
  }

  static navigateWithoutBottomNav(dynamic routeClass) {
    Navigator.of(navigatorKey!.currentContext!, rootNavigator: true).push(
      CupertinoPageRoute(builder: (context) => routeClass),
    );
  }

  static BuildContext get currentContext => navigatorKey!.currentState!.context;

  static bool get canPop => navigatorKey!.currentState!.canPop();

  static void popUntilIsFirst() {
    return navigatorKey!.currentState!.popUntil(
      (route) => route.isFirst,
    );
  }

  static Future pushNamed(String route, {arguments}) {
    return navigatorKey!.currentState!.pushNamed(route, arguments: arguments);
  }

  static Future pushNamedReplacement(String route, {arguments}) {
    return navigatorKey!.currentState!
        .pushReplacementNamed(route, arguments: arguments);
  }

  static Future pushNamedAndClear(String route, {arguments}) {
    return navigatorKey!.currentState!.pushNamedAndRemoveUntil(
      route,
      (_) => false,
      arguments: arguments,
    );
  }

  static Future<bool> maybePop([result]) {
    return navigatorKey!.currentState!.maybePop(result);
  }

  static void pop([result]) {
    if (canPop) return navigatorKey!.currentState!.pop(result);
  }
}
