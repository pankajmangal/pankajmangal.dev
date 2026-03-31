import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/widgets/project_card.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/project_list.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    final isTablet = MediaQuery.of(context).size.width > 600;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Featured Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Apps I’ve built and deployed on Play Store & App Store with real users, payments, and live tracking systems.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 40),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isDesktop
                  ? 2
                  : isTablet
                  ? 2
                  : 1,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: isDesktop ? 1.45 : 1.05,
            ),
            itemBuilder: (context, index) {
              return ProjectCard(project: projects[index]);
            },
          ),
        ],
      ),
    );
  }
}