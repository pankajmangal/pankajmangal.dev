import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_skill_chip.dart';

class AboutSkillToolkitWidget extends StatelessWidget {
  const AboutSkillToolkitWidget({
    super.key,
    required this.title,
    required this.skills,
  });

  final String title;
  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills
                .map((skill) => AboutSkillChip(text: skill))
                .toList(),
          ),
        ],
      ),
    );
  }
}
