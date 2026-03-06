import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle heading(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: 56,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle subtitle() {
    return GoogleFonts.inter(
      fontSize: 20,
      color: Colors.white70,
    );
  }
}