import 'package:flutter/material.dart';

class Nav {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static navigatorPushName(String route) {
    Nav.navigatorKey.currentState!.pushNamed(route);
  }

  static navigatorPush(Widget page) {
    Nav.navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (context) => page),
    );
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

  static navigatorPushByAnimation(Widget Function() view) {
    Nav.navigatorKey.currentState!.push(
      PageRouteBuilder(
        pageBuilder: (c, a1, a2) => view(),
        transitionsBuilder: (c, anim, a2, child) =>
            FadeTransition(opacity: anim, child: child),
        transitionDuration: Duration(milliseconds: 2000),
      ),
    );
  }
}
