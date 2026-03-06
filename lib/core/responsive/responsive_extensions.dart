import 'package:flutter/material.dart';
import 'breakpoints.dart';

extension ResponsiveExtension on BuildContext {

  double get width => MediaQuery.of(this).size.width;

  bool get isMobile => width < Breakpoints.mobile;

  bool get isTablet =>
      width >= Breakpoints.mobile &&
          width < Breakpoints.desktop;

  bool get isDesktop =>
      width >= Breakpoints.desktop;

  double get horizontalPadding {
    if (isDesktop) return 100;
    if (isTablet) return 50;
    return 20;
  }

  double get sectionVerticalPadding =>
      isMobile ? 60 : 100;
}