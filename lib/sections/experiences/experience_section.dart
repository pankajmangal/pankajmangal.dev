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
              duration: 'Jan 2025 - Nov 2025',
              metrics: ['30% Crash Reduction', '40% Faster Releases'],
              points: [
                'Designed scalable apps using Clean Architecture (BLoC + Riverpod)',
                'Reduced production crashes by 30% via performance optimization',
                'Automated CI/CD pipelines reducing release cycle by 40%',
                'Integrated analytics and performance monitoring',
                'Built reusable modular components',
              ],
              tech: ['Flutter', 'BLoC', 'Riverpod', 'CI/CD', 'Firebase', 'Analytics', 'Testing',],
            ),
            SizedBox(height: 30),
            ExperienceMobileTileLayout(
              company: 'Mobikasa',
              role: 'Flutter Developer',
              duration: 'June 2023 - Jan 2025',
              metrics: ['500K+ Downloads', '25% Checkout Boost'],
              points: [
                'Scaled e-commerce Flutter app to 500K+ downloads',
                'Implemented loyalty rewards and wallet system',
                'Improved checkout conversion by 25%',
                'Integrated Shopify, REST & GraphQL APIs',
                'Delivered performance improvements across platforms'
              ],
              tech: ['Flutter', 'GraphQL', 'REST APIs', 'Shopify', 'Firebase', 'Analytics',],
            ),
            SizedBox(height: 30),
            ExperienceMobileTileLayout(
              company: 'Alertus Technologies',
              role: 'Flutter Developer',
              duration: 'Oct 2022 - Jun 2023',
              metrics: ['20% Stability Improvement', 'Multi-Platform Delivery'],
              points: [
                'Built multi-platform Flutter apps (Android, iOS, Web, Tablet)',
                'Improved app stability by 20% through automated testing',
                'Optimized Flutter Web performance across browsers',
                'Implemented WCAG accessibility components',
                'Established code review and documentation workflows'
              ],
              tech: ['Flutter', 'Flutter Web', 'Accessibility', 'Testing', 'Responsive UI', 'CI/CD',],
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
                'Designed scalable apps using Clean Architecture (BLoC + Riverpod)',
                'Reduced production crashes by 30% via performance optimization',
                'Automated CI/CD pipelines reducing release cycle by 40%',
                'Integrated analytics and performance monitoring',
                'Built reusable modular components',
              ],
              tech: ['Flutter', 'BLoC', 'Riverpod', 'CI/CD', 'Firebase', 'Analytics', 'Testing',],
            ),
            SizedBox(height: 30),
            ExperienceDesktopTileLayout(
              company: 'Mobikasa',
              role: 'Flutter Developer',
              duration: 'June 2023 - Jan 2025',
              metrics: ['500K+ Downloads', '25% Checkout Boost'],
              points: [
                'Scaled e-commerce Flutter app to 500K+ downloads',
                'Implemented loyalty rewards and wallet system',
                'Improved checkout conversion by 25%',
                'Integrated Shopify, REST & GraphQL APIs',
                'Delivered performance improvements across platforms'
              ],
              tech: ['Flutter', 'GraphQL', 'REST APIs', 'Shopify', 'Firebase', 'Analytics',],
            ),
            SizedBox(height: 30),
            ExperienceDesktopTileLayout(
              company: 'Alertus Technologies',
              role: 'Flutter Developer',
              duration: 'Oct 2022 - Jun 2023',
              metrics: ['20% Stability Improvement', 'Multi-Platform Delivery'],
              points: [
                'Built multi-platform Flutter apps (Android, iOS, Web, Tablet)',
                'Improved app stability by 20% through automated testing',
                'Optimized Flutter Web performance across browsers',
                'Implemented WCAG accessibility components',
                'Established code review and documentation workflows'
              ],
              tech: ['Flutter', 'Flutter Web', 'Accessibility', 'Testing', 'Responsive UI', 'CI/CD',],
            ),
          ],
        );
      },
    );
  }
}