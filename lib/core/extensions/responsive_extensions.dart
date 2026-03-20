import 'package:flutter/material.dart';
import '../responsive/breakpoints.dart';

extension ResponsiveExtension on BuildContext {

  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  bool get isMobile => width < Breakpoints.mobile;

  bool get isTablet =>
      width >= Breakpoints.mobile &&
          width < Breakpoints.tablet;

  bool get isDesktop =>
      width >= Breakpoints.tablet;

  double get horizontalPadding {
    if (isDesktop) return 100;
    if (isTablet) return 50;
    return 20;
  }

  double get sectionVerticalPadding =>
      isMobile ? 60 : 100;
}