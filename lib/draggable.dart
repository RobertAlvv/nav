import 'package:flutter/material.dart';
import 'package:nav/nav.dart';

class CustomDraggable {
  static showBottomSheet({
    required Widget content,
    required BuildContext context,
    Color color = Colors.white,
    bool isScrollControlled = true,
    bool isDismissible = true,
  }) =>
      showModalBottomSheet(
        context: context,
        isScrollControlled: isScrollControlled,
        isDismissible: isDismissible,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: color,
        builder: (context) => content,
      );
}
