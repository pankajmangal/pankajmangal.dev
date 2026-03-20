import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class PortfolioElevatedButton extends StatelessWidget {
  const PortfolioElevatedButton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.padding34, vertical: Dimens.padding20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.circularRadius12)),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: AppColors.whiteColor)),
    );
  }
}
