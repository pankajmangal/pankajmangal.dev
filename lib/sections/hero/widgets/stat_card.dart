import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/hero/models/stat_item.dart';
import 'package:pankaj_portfolio/widgets/gradients/gradient_text.dart';

class StatCard extends StatelessWidget {
  final StatItem stat;
  final bool showRightBorder;
  final bool showBottomBorder;

  const StatCard({super.key,
    required this.stat,
    this.showRightBorder = false,
    this.showBottomBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        border: Border(
          right: showRightBorder
              ? const BorderSide(
            color: Color(0xFFE5E7EB),
          )
              : BorderSide.none,
          bottom: showBottomBorder
              ? const BorderSide(
            color: Color(0xFFE5E7EB),
          )
              : BorderSide.none,
        ),
      ),
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          GradientText(
            text: stat.value,
            fontSize: Dimens.fontSize28,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
            textHeight: 1.2,
          ),
          const SizedBox(height: 10),
          Text(
            stat.label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.lightText,
            ),
          ),
        ],
      ),
    );
  }
}