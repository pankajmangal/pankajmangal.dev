import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/widgets/desktop/project_desktop_layout.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/widgets/mobile/project_mobile_layout.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double horizontalPadding = context.isTablet
            ? 60.0
            : context.isMobile
            ? 40.0
            : 100.0;
        const spacing = 24.0;

        int crossAxisCount = width > 1200
            ? 3
            : width > 800
            ? 2
            : 1;

        final availableWidth = width - (horizontalPadding * 2);
        final itemWidth =
            (availableWidth - ((crossAxisCount - 1) * spacing)) /
            crossAxisCount;

        if (context.isMobile) {
          return ProjectMobileLayout(itemWidth: itemWidth);
        }
        return ProjectDesktopLayout(itemWidth: itemWidth);
      },
    );
  }
}
