import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/sections/hero/models/stat_item.dart';

class StatCard extends StatelessWidget {
  final StatItem stat;
  final bool showDivider;

  const StatCard({super.key,
    required this.stat,
    required this.showDivider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        border: showDivider
            ? const Border(
          right: BorderSide(
            color: Color(0xFFE5E7EB),
          ),
        )
            : null,
      ),
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          Text(
            stat.value,
            style: GoogleFonts.inter(
              fontSize: 36,
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