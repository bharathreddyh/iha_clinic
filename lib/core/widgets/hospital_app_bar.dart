import 'package:flutter/material.dart';

/// Creates an AppBar with a clickable hospital name centered in a rectangle.
AppBar hospitalAppBar(
  BuildContext context, {
  String? title,
  Color? backgroundColor,
  Color? foregroundColor,
  List<Widget>? actions,
  bool automaticallyImplyLeading = true,
}) {
  return AppBar(
    centerTitle: true,
    title: GestureDetector(
      onTap: () => Navigator.pushNamedAndRemoveUntil(
        context,
        '/',
        (route) => false,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF0D47A1),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          "Patil's Multispeciality Hospital",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0D47A1),
          ),
        ),
      ),
    ),
    backgroundColor: backgroundColor,
    foregroundColor: foregroundColor,
    automaticallyImplyLeading: automaticallyImplyLeading,
    actions: actions,
  );
}
