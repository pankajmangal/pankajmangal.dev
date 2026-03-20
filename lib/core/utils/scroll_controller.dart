import 'package:flutter/material.dart';

class ScrollManager {
  static final controller = ScrollController();

  static final heroKey = GlobalKey();
  static final aboutKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final experiencesKey = GlobalKey();
  static final projectsKey = GlobalKey();
  static final contactKey = GlobalKey();

  static void scrollTo(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;

      if (context == null) return;

      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    });
  }
}