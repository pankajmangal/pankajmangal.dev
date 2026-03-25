import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';

class FooterHeaderWidget extends StatelessWidget {
  const FooterHeaderWidget({super.key, this.headerFontSize});

  final double? headerFontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.devName,
            style: GoogleFonts.inter(
              fontSize: headerFontSize ?? Dimens.fontSize28,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            Strings.footerDevNote,
            style: GoogleFonts.inter(
              color: Color(0xFF9CA3AF),
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
