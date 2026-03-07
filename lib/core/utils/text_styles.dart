import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextStyles {
  static final nav = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.darkText,
  );

  static final title = GoogleFonts.inter(
    fontSize: 42,
    fontWeight: FontWeight.w700,
    color: AppColors.darkText,
  );

  static final subtitle = GoogleFonts.inter(
    fontSize: 18,
    color: AppColors.lightText,
  );

  static final description = GoogleFonts.inter(
    fontSize: 16,
    height: 1.6,
    color: AppColors.lightText,
  );
}