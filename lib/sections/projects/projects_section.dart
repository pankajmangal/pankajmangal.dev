import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selected Projects",
                style: GoogleFonts.inter(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Case studies highlighting architecture decisions and measurable impact.",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              ),
              const SizedBox(height: 80),

              // Case Study 1
              const ProjectCaseStudy(
                title: "E-Commerce Flutter Application",
                subtitle: "Mobikasa • 2023–2025",
                problem:
                "The application suffered from inconsistent checkout flows, performance bottlenecks, and limited scalability as user growth accelerated.",
                action:
                "Re-architected core modules using Clean Architecture and modular design. Optimized rendering performance, implemented state management using BLoC, and improved API error handling reliability.",
                impact:
                "Increased checkout success rate by 25%, improved app stability, and supported scaling to 500K+ downloads across platforms.",
              ),

              const SizedBox(height: 80),

              // Case Study 2
              const ProjectCaseStudy(
                title: "Loyalty & Rewards System",
                subtitle: "Amala Project",
                problem:
                "The business required a flexible loyalty mechanism integrated directly into purchase flows while maintaining real-time synchronization.",
                action:
                "Designed a modular loyalty architecture including point earning logic, tier-based rewards, redemption workflows, and API-driven wallet synchronization.",
                impact:
                "Improved customer engagement and retention while enabling seamless reward integration into checkout processes.",
              ),

              const SizedBox(height: 80),

              // Case Study 3
              const ProjectCaseStudy(
                title: "CI/CD & Release Optimization",
                subtitle: "Production Engineering Initiative",
                problem:
                "Manual release cycles caused deployment delays and inconsistent production builds.",
                action:
                "Implemented automated pipelines using GitHub Actions and GitLab CI. Introduced quality gates with SonarQube and structured code review workflows.",
                impact:
                "Reduced release cycle time by 40% and improved production reliability across multiple applications.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCaseStudy extends StatelessWidget {
  final String title;
  final String subtitle;
  final String problem;
  final String action;
  final String impact;

  const ProjectCaseStudy({
    super.key,
    required this.title,
    required this.subtitle,
    required this.problem,
    required this.action,
    required this.impact,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: 3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(height: 24),

          _sectionBlock("Problem", problem),
          const SizedBox(height: 20),
          _sectionBlock("Action", action),
          const SizedBox(height: 20),
          _sectionBlock("Impact", impact),
        ],
      ),
    );
  }

  Widget _sectionBlock(String heading, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          content,
          style: GoogleFonts.inter(
            fontSize: 15,
            height: 1.6,
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }
}