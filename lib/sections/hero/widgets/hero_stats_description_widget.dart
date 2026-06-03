import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';

class HeroStatsDescriptionWidget extends StatelessWidget {
  const HeroStatsDescriptionWidget({super.key, required this.fontSize});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SvgPicture.asset(
          ImagePaths.sparkles,
          colorFilter: ColorFilter.mode(
            AppColors.lightText,
            BlendMode.srcIn,
          ),
          width: 14,
          height: 14,
          fit: BoxFit.scaleDown,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            'Trusted by teams shipping products to millions.',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.lightText,
            ),
          ),
        ),
      ],
    );
  }
}
