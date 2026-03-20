import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart' show AppColors;
import 'package:pankaj_portfolio/core/utils/text_styles.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "<FlutterDev />",
            style: AppTextStyles.nav.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              "Home",
              "About",
              "Skills",
              "Projects",
              "Contact",
            ]
                .map(
                  (item) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(item, style: AppTextStyles.nav),
              ),
            )
                .toList(),
          )
        ],
      ),
    );
  }
}