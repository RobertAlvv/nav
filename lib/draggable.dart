import 'package:flutter/material.dart';
import 'package:nav/nav.dart';

class CustomDraggable {
  static showBottomSheet(Widget content,
          [Color color = Colors.white,
          bool isScrollControlled = true,
          bool isDismissible = true]) =>
      showModalBottomSheet(
        context: Nav.navigatorKey.currentState!.context,
        isScrollControlled: isScrollControlled,
        isDismissible: isDismissible,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        backgroundColor: color,
        builder: (context) => content,
      );
}
