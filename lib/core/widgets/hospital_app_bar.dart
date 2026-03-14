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
      child: Image.asset(
        'assets/images/mainpage/logo.png',
        height: 40,
        fit: BoxFit.contain,
      ),
    ),
    backgroundColor: backgroundColor,
    foregroundColor: foregroundColor,
    automaticallyImplyLeading: automaticallyImplyLeading,
    actions: actions,
  );
}
