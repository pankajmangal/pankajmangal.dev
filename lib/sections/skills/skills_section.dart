import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/skills/skill_card.dart';
import 'package:pankaj_portfolio/sections/skills/skill_model.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      /// BACKGROUND COLOR (important)
      color: const Color(0xFFEFF3F8),

      padding: EdgeInsets.symmetric(
        horizontal: context.horizontalPadding,
        vertical: context.sectionVerticalPadding,
      ),

      child: Column(
        children: [

          /// TITLE
          Text(
            "Skills & Expertise",
            style: GoogleFonts.inter(
              fontSize: context.isMobile ? 26 : 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkText,
            ),
          ),

          const SizedBox(height: 12),

          Container(
            width: 80,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          const SizedBox(height: 60),

          /// GRID
          LayoutBuilder(
            builder: (context, constraints) {

              final isDesktop = constraints.maxWidth > 900;

              return Wrap(
                spacing: 30,
                runSpacing: 30,
                children: [

                  SkillCard(
                    width: isDesktop
                        ? (constraints.maxWidth - 30) / 2
                        : constraints.maxWidth,
                    title: "Mobile Development",
                    skills: const [
                      SkillModel("Flutter", 95),
                      SkillModel("Dart", 90),
                      SkillModel("iOS Development", 75),
                      SkillModel("Android Development", 80),
                    ],
                  ),

                  SkillCard(
                    width: isDesktop
                        ? (constraints.maxWidth - 30) / 2
                        : constraints.maxWidth,
                    title: "State Management",
                    skills: const [
                      SkillModel("Provider", 90),
                      SkillModel("Riverpod", 85),
                      SkillModel("BLoC", 88),
                      SkillModel("GetX", 80),
                    ],
                  ),

                  SkillCard(
                    width: isDesktop
                        ? (constraints.maxWidth - 30) / 2
                        : constraints.maxWidth,
                    title: "Backend & Tools",
                    skills: const [
                      SkillModel("Firebase", 85),
                      SkillModel("REST APIs", 90),
                      SkillModel("GraphQL", 75),
                      SkillModel("Git", 88),
                    ],
                  ),

                  SkillCard(
                    width: isDesktop
                        ? (constraints.maxWidth - 30) / 2
                        : constraints.maxWidth,
                    title: "Design & Other",
                    skills: const [
                      SkillModel("UI/UX Design", 80),
                      SkillModel("Figma", 75),
                      SkillModel("CI/CD", 70),
                      SkillModel("Testing", 82),
                    ],
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}