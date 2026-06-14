import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/sections/about/widgets/feature_card.dart';

class FeatureCardMobileWidget extends StatelessWidget {
  const FeatureCardMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeatureCard(
          icon: ImagePaths.architecture,
          title: 'Scalable Architecture',
          description:
          'Clean Architecture, modular systems, and maintainable codebases built to scale.',
        ),
        const SizedBox(height: 18),
        FeatureCard(
          title: 'Performance & Quality',
          icon: ImagePaths.performance,
          description:
          'Reduced crash rates by 30% and improved release cycles by 40% through automation.',
        ),
        const SizedBox(height: 18),
        FeatureCard(
          title: 'Engineering Leadership',
          icon: ImagePaths.leadership,
          description:
          'Leading teams, mentoring developers, and driving technical decisions.',
        ),
        const SizedBox(height: 18),
        FeatureCard(
          title: 'AI & Innovation',
          icon: ImagePaths.aiAutomation,
          description:
          'Exploring AI-assisted development, Python backends, and agentic workflows.',
        ),
      ],
    );
  }
}
