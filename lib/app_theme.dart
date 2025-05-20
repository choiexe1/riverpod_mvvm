import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
    focusColor: Colors.grey.withValues(alpha: 0.5),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18),
    ),
  );
}
