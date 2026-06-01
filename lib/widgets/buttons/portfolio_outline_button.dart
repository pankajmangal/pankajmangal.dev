import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class PortfolioOutlineButton extends StatelessWidget {
  const PortfolioOutlineButton({super.key, required this.child, this.onPressed});

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.greyColor500, width: Dimens.borderWidth1,),
        padding: EdgeInsets.symmetric(horizontal: Dimens.padding34, vertical: Dimens.padding20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.circularRadius8)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
