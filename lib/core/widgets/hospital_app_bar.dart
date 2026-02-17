import 'package:flutter/material.dart';

/// Creates an AppBar with a clickable hospital name that navigates home.
AppBar hospitalAppBar(
  BuildContext context, {
  required String title,
  Color? backgroundColor,
  Color? foregroundColor,
  List<Widget>? actions,
  bool automaticallyImplyLeading = true,
}) {
  return AppBar(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamedAndRemoveUntil(
            context,
            '/',
            (route) => false,
          ),
          child: const Text(
            "Patil's Multispeciality Hospital",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0D47A1),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: foregroundColor,
          ),
        ),
      ],
    ),
    backgroundColor: backgroundColor,
    foregroundColor: foregroundColor,
    automaticallyImplyLeading: automaticallyImplyLeading,
    actions: actions,
  );
}
