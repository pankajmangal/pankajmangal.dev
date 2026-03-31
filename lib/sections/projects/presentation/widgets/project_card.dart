import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';
import 'package:pankaj_portfolio/widgets/buttons/gradient_button.dart';

class ProjectCard extends StatefulWidget {
  final ProjectEntity project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: hovered
            ? (Matrix4.identity()..translate(0, -6))
            : Matrix4.identity(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: hovered ? 20 : 10,
              color: Colors.black12,
              offset: const Offset(0, 6),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // buildPlatformBadges(widget.project.platforms),
            // const SizedBox(height: 12),
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.network(
                widget.project.banner,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    widget.project.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    widget.project.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 16),


                  buildHighlights(widget.project.highlights),

                  const SizedBox(height: 12),

                  buildFeatures(widget.project.features),

                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: widget.project.technologies
                        .map(
                          (e) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.blue.withValues(alpha: .1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          e,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ),

                  const SizedBox(height: 16),

                  /// BUTTONS
                  Row(
                    children: [
                      if (widget.project.playStoreUrl.isNotEmpty)
                        GradientButton(
                          text: 'Play Store',
                          icon: ImagePaths.android,
                          onTap: () => openLink(widget.project.playStoreUrl),
                        ),

                      const SizedBox(width: 12),

                      if (widget.project.appStoreUrl.isNotEmpty)
                        GradientButton(
                          text: 'App Store',
                          icon: ImagePaths.apple,
                          onTap: () => openLink(widget.project.appStoreUrl),
                        ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildPlatformBadges(List<String> platforms) {
    return Wrap(
      spacing: 8,
      children: platforms.map((e) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            e,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        );
      }).toList(),
    );
  }

  Widget buildHighlights(List<String> highlights) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: highlights.map((e) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xffEEF2FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            e,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xff3B82F6),
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget buildFeatures(List<String> features) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Key Features:',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
        ...features.map(
              (e) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              children: [
                SvgPicture.asset(
                  ImagePaths.playArrow,
                  colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
                  width: 16, height: 16,
                ),
                const SizedBox(width: 4),
                Expanded(child: Text(e)),
              ],
            ),
          ),
        )
      ],
    );
  }
}