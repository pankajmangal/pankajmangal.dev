import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/widgets/project_card.dart';

class FetchProjectsWidget extends StatefulWidget {
  const FetchProjectsWidget({super.key, required this.projects});
  final List<ProjectEntity> projects;

  @override
  State<FetchProjectsWidget> createState() => _FetchProjectsWidgetState();
}

class _FetchProjectsWidgetState extends State<FetchProjectsWidget> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        int crossAxisCount = width > 1200
            ? 3
            : width > 800
            ? 2
            : 1;

        double itemWidth =
            (width - (crossAxisCount - 1) * 24) / crossAxisCount;

        return Wrap(
          spacing: 24,
          runSpacing: 24,
          children: widget.projects.map((project) {
            return SizedBox(
              width: itemWidth,
              child: ProjectCard(project: project),
            );
          }).toList(),
        );
      },
    );
  }
}
