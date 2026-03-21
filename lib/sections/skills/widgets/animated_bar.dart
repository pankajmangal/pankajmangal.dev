import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class AnimatedBar extends StatelessWidget {
  final int value;
  final List<Color> gradient;

  const AnimatedBar({
    super.key,
    required this.value,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: value / 100),
      duration: const Duration(milliseconds: 900),
      builder: (context, val, _) {
        return Container(
          height: 6,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.circularRadius10),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.circularRadius10),
                  color: AppColors.greyColorShade200,
                ),
              ),

              FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: val,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.circularRadius10),
                    gradient: LinearGradient(colors: gradient),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}