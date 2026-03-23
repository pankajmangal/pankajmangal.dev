import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/desktop/experience_desktop_tile_layout.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/mobile/experience_mobile_tile_layout.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: ScrollManager.experiencesKey,
      builder: (context, constraints) {
        if (context.isMobile) {
          return Column(
          children: const [
            Text(
              Strings.professionalExperiences,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: Dimens.fontSize28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              Strings.professionalExperienceDesc,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ExperienceMobileTileLayout(
              company: 'Mindmap Technologies',
              role: 'Senior Flutter Engineer',
              duration: '2025 - Present',
              metrics: ['30% Crash Reduction', '40% Faster Releases'],
              points: [
                'Clean architecture with BLoC & Riverpod',
                'CI/CD automation pipelines',
                'Performance optimization',
              ],
              tech: ['Flutter', 'Riverpod', 'CI/CD'],
            ),

            SizedBox(height: 30),

            ExperienceMobileTileLayout(
              company: 'Mobikasa',
              role: 'Flutter Developer',
              duration: '2023 - 2025',
              metrics: ['500K+ Downloads', '25% Checkout Boost'],
              points: [
                'Loyalty wallet system',
                'GraphQL integration',
                'Performance improvements',
              ],
              tech: ['Flutter', 'GraphQL', 'Firebase'],
            ),
          ],
        );
        }
        return Column(
          children: const [
            Text(
              Strings.professionalExperiences,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: Dimens.fontSize40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              Strings.professionalExperienceDesc,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ExperienceDesktopTileLayout(
              company: 'Mindmap Technologies',
              role: 'Senior Flutter Engineer',
              duration: 'Jan 2025 - Nov 2025',
              metrics: ['30% Crash Reduction', '40% Faster Releases'],
              points: [
                'Clean architecture with BLoC & Riverpod',
                'CI/CD automation pipelines',
                'Performance optimization',
              ],
              tech: ['Flutter', 'BLoC', 'Riverpod', 'CI/CD'],
            ),

            SizedBox(height: 30),

            ExperienceDesktopTileLayout(
              company: 'Mobikasa',
              role: 'Flutter Developer',
              duration: 'June 2023 - Jan 2025',
              metrics: ['500K+ Downloads', '25% Checkout Boost'],
              points: [
                'Loyalty wallet system',
                'GraphQL integration',
                'Performance improvements',
              ],
              tech: ['Flutter', 'Shopify', 'GraphQL', 'Firebase'],
            ),
          ],
        );
      },
    );
  }
}