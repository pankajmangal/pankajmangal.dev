import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/sections/hero/models/stat_item.dart';

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
          Text(
            stat.value,
            style: GoogleFonts.inter(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
              height: 1.2,
            ),
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