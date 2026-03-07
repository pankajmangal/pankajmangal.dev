import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class NavItem extends StatelessWidget {
  final String title;
  final double? fontSize;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.title,
    this.fontSize = Dimens.fontSize16,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.padding16),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            color: AppColors.darkText,
          ),
        ),
      ),
    );
  }
}