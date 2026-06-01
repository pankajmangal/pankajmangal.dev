import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/sections/hero/models/stat_item.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/stat_card.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  static const stats = [
    StatItem(
      value: '9+',
      label: 'Years in Mobile',
    ),
    StatItem(
      value: '5+',
      label: 'Years in Flutter',
    ),
    StatItem(
      value: '500K+',
      label: 'Users Reached',
    ),
    StatItem(
      value: '40%',
      label: 'Faster Releases',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          constraints: const BoxConstraints(
            maxWidth: 1600,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: const Color(0xFFE5E7EB),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .03),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: List.generate(
              stats.length,
                  (index) => Expanded(
                child: StatCard(
                  stat: stats[index],
                  showDivider:
                  index != stats.length - 1,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Text(
              'Trusted by teams shipping products to millions.',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.lightText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}