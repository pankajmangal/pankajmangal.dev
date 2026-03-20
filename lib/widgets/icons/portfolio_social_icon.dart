import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class PortfolioSocialIcon extends StatelessWidget {
  const PortfolioSocialIcon({super.key, required this.assetPath});

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .1),
            blurRadius: 8,
          )
        ],
      ),
      child: SvgPicture.asset(assetPath, width: 18, height: 18, fit: BoxFit.scaleDown,),
    );
  }
}
