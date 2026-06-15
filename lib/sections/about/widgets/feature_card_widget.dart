import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/sections/about/widgets/feature_card.dart';

class FeatureCardWidget extends StatelessWidget {
  const FeatureCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        int columns;

        if (width > 1400) {
          columns = 4;
        } else if (width > 900) {
          columns = 2;
        } else {
          columns = 1;
        }

        final cardWidth =
            (width - ((columns - 1) * 12)) / columns;

        return Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FeatureCard(
              icon: ImagePaths.architecture,
              title: 'Scalable Architecture',
              description:
              'Clean Architecture, modular systems, and maintainable codebases built to scale.',
            ),
            FeatureCard(
              title: 'Performance & Quality',
              icon: ImagePaths.performance,
              description:
              'Reduced crash rates by 30% and improved release cycles by 40% through automation.',
            ),
            FeatureCard(
              title: 'Engineering Leadership',
              icon: ImagePaths.leadership,
              description:
              'Leading teams, mentoring developers, and driving technical decisions.',
            ),
            FeatureCard(
              title: 'AI & Innovation',
              icon: ImagePaths.aiAutomation,
              description:
              'Exploring AI-assisted development, Python backends, and agentic workflows.',
            ),
          ].map(
                (card) => SizedBox(
              width: cardWidth,
              child: card,
            ),
          ).toList(),
        );
      },
    );
  }
}
