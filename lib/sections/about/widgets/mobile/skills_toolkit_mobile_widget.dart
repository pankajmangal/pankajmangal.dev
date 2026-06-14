import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_skill_toolkit_widget.dart';

class SkillsToolkitMobileWidget extends StatelessWidget {
  const SkillsToolkitMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: const Color(0xffE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(3),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SKILLS & TOOLKIT',
            style: GoogleFonts.inter(
              fontSize: 14,
              letterSpacing: 3,
              color: const Color(0xff6B7280),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: Dimens.padding28),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutSkillToolkitWidget(
                title: 'Mobile',
                skills: [
                  'Flutter',
                  'Dart',
                  'iOS (Swift)',
                  'Android (Kotlin)',
                  'Python',
                ],
              ),
              const SizedBox(height: 24),
              AboutSkillToolkitWidget(
                title: 'Architecture',
                skills: [
                  'Clean Architecture',
                  'MVVM',
                  'BLoC',
                  'Riverpod',
                  'Modular Monorepos',
                ],
              ),
              const SizedBox(height: 24),
              AboutSkillToolkitWidget(
                title: 'Backend & APIs',
                skills: ['Firebase', 'GraphQL', 'REST', 'Node.js', 'Django'],
              ),
              const SizedBox(height: 24),
              AboutSkillToolkitWidget(
                title: 'DevOps & Quality',
                skills: [
                  'GitHub Actions',
                  'GitLab CI',
                  'Fastlane',
                  'Code magic',
                  'CI/CD',
                  'SonarQube',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
