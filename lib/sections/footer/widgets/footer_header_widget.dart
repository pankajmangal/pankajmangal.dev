import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/logo/portfolio_logo.dart';

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
          PortfolioLogo(textHeadingColor: AppColors.whiteColor,),
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
