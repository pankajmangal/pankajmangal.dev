import 'package:flutter/material.dart';

class AppGradients {
  static const primary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF4338CA), // Indigo 700
      Color(0xFF6366F1), // Indigo 500
      Color(0xFF8B5CF6), // Violet 500
    ],
    stops: [0.0, 0.55, 1.0],
  );
}