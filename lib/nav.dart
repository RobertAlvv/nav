import 'package:flutter/material.dart';

class Nav {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static navigatorPush(String route) {
    Nav.navigatorKey.currentState!.pushNamed(route);
  }

  static navigatorPop() {
    Nav.navigatorKey.currentState!.pop();
  }

  static navigatorReplacementName(String route) {
    Nav.navigatorKey.currentState!.pushReplacementNamed(route);
  }

  static navigatorPopAndPush(String route) {
    Nav.navigatorKey.currentState!.popAndPushNamed(route);
  }
}
