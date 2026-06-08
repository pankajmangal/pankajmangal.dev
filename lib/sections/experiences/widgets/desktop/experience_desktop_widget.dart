import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/experience_timeline_card.dart';

class ExperienceDesktopWidget extends StatelessWidget {
  const ExperienceDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 120,
        vertical: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EXPERIENCE',
            style: GoogleFonts.inter(
              fontSize: 12,
              letterSpacing: 2,
              height: 1.65,
              fontWeight: FontWeight.w500,
              color: const Color(0xff4F46E5),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '9+ years building mobile products at scale.',
            style: GoogleFonts.inter(
              fontSize: 32,
              height: 1.05,
              fontWeight: FontWeight.w700,
              color: const Color(0xff0F172A),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 900,
            child: Text(
              'From Android development to Flutter leadership — designing architecture, mentoring engineers, and delivering products used by hundreds of thousands of users.',
              style: GoogleFonts.inter(
                fontSize: 16,
                height: 1.6,
                color: const Color(0xff6B7280),
              ),
            ),
          ),
          const SizedBox(height: 64),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: experiences.length,
            itemBuilder: (context, index) {
              return ExperienceTimelineCard(
                experience: experiences[index],
                isLast: index == experiences.length - 1,
              );
            },
          ),
        ],
      ),
    );
  }
}