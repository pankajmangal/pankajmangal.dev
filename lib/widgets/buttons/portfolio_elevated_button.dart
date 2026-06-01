import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class PortfolioElevatedButton extends StatelessWidget {
  const PortfolioElevatedButton({super.key, required this.child, this.onPressed});

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.padding28, vertical: Dimens.padding20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.circularRadius8)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
