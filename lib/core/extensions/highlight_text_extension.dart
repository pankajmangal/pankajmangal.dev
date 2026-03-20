import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

extension HighlightTextExtension on String {
  TextSpan highlight({
    bool isHighlight = false,
    Color? highlightColor,
    Color? normalColor,
    FontWeight? highlightWeight,
  }) {
    return TextSpan(
      text: this,
      style: TextStyle(
        color: isHighlight
            ? (highlightColor ?? AppColors.primary)
            : (normalColor ?? AppColors.greyColor700),
        fontWeight: isHighlight
            ? (highlightWeight ?? FontWeight.w600)
            : FontWeight.normal,
      ),
    );
  }
}