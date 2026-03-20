import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class PortfolioOutlineButton extends StatelessWidget {
  const PortfolioOutlineButton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.primary, width: Dimens.borderWidth2,),
        padding: EdgeInsets.symmetric(horizontal: Dimens.padding34, vertical: Dimens.padding20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.circularRadius12)),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: AppColors.primary,
      fontSize: Dimens.fontSize16)),
    );
  }
}
