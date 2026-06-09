import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/widgets/project_card.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {

  final List<ProjectCard> projects = [
    ProjectCard(
      title: 'Scalable FinTech Wallet',
      subtitle:
      'Cross-platform digital wallet serving 500K+ users with real-time transaction sync.',
      problem:
      "Legacy native apps couldn't keep up with feature velocity; release cycles took 3 weeks.",
      solution:
      'Re-architected as a modular Flutter app with Riverpod, GraphQL and CI/CD automation.',
      metrics: [
        '500K+ active users',
        'Releases cut from 3 weeks → ~10 days',
        'Crash-free sessions: 99.6%'
      ],
      tags: [
        'Flutter',
        'Riverpod',
        'GraphQL',
        'CI/CD',
      ],
    ),
    ProjectCard(
      title: 'Health Companion App',
      subtitle:
      'Personalized wellness tracking with offline-first architecture and HealthKit integration.',
      problem:
      'Users dropped off due to slow sync and unreliable offline mode.',
      solution:
      'Introduced an offline-first sync engine with conflict resolution and background isolates.',
      metrics: [
        '55% faster cold start',
        '3.2× session length',
        '4.8★ App Store rating'
      ],
      tags: [
        'Flutter',
        'BLoC',
        'HealthKit',
        'Isar',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SELECTED WORK',
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
            'Projects with measurable impact.',
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
              'Case studies focused on the problem, the approach, and the outcome — not just screenshots.',
              style: GoogleFonts.inter(
                fontSize: 16,
                height: 1.6,
                color: const Color(0xff6B7280),
              ),
            ),
          ),
          const SizedBox(height: 64),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 850,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              mainAxisExtent: 550,
            ),
            itemCount: projects.length,
            itemBuilder: (_, i) => projects[i],
          ),
        ],
      ),
    );
  }
}