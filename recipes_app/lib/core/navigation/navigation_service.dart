import 'package:flutter/material.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> navigateTo(String route, {bool replace = false}) {
    final navigator = navigatorKey.currentState;
    if (navigator == null) return Future.value();

    if (replace) {
      return navigator.pushReplacementNamed(route);
    } else {
      return navigator.pushNamed(route);
    }
  }
}
