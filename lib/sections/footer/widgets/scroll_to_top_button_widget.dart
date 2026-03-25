import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';

class ScrollToTopButtonWidget extends StatelessWidget {
  const ScrollToTopButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primary,
      onPressed: () => ScrollManager.scrollTo(ScrollManager.heroKey),
      child: const Icon(Icons.keyboard_arrow_up),
    );
  }
}
