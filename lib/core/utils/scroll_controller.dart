import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class ScrollManager {
  static final controller = ScrollController();

  static final heroKey = GlobalKey();
  static final aboutKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final experiencesKey = GlobalKey();
  static final projectsKey = GlobalKey();
  static final contactKey = GlobalKey();

  static void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: Dimens.duration600ms),
      curve: Curves.easeInOut,
    );
  }
}