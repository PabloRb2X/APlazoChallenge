import 'package:flutter/material.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> navigateTo(String route, {bool replace = false}) {
    if (replace) {
      return navigatorKey.currentState!.pushReplacementNamed(route);
    } else {
      return navigatorKey.currentState!.pushNamed(route);
    }
  }
}
