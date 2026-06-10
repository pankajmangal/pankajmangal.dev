import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/widgets/gradients/gradient_text.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String category;
  final List<String> highlights;
  final List<String> impacts;
  final List<String> tech;

  const ProjectCard({
    super.key,
    required this.category,
    required this.title,
    required this.description,
    required this.highlights,
    required this.impacts,
    required this.tech,
  });

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
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_projectCategoryBadge(), _featuredBadge()],
              ),
              const SizedBox(height: 24),
              Text(
                widget.title,
                style: GoogleFonts.inter(
                  fontSize: Dimens.fontSize18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 24),
              _label('DESCRIPTION'),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: GoogleFonts.inter(
                  fontSize: Dimens.fontSize14,
                  height: 1.5,
                  color: AppColors.blackColor,
                ),
              ),
              const SizedBox(height: 16),
              _label('HIGHLIGHTS'),
              const SizedBox(height: 8),
              ...widget.highlights.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_right,
                        size: 18,
                        color: Color(0xFF4F46E5),
                      ),
                      Expanded(
                        child: Text(
                          e,
                          style: GoogleFonts.inter(
                            fontSize: Dimens.fontSize14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              _label('IMPACT TAGS'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: widget.impacts
                    .map(
                      (e) => Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFE5E7EB)),
                        ),
                        child: Text(
                          e,
                          style: GoogleFonts.inter(
                            fontSize: Dimens.fontSize12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 12),
              _label('TECH'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: widget.tech
                    .map(
                      (e) => Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFE5E7EB)),
                        ),
                        child: Text(
                          e,
                          style: GoogleFonts.inter(
                            fontSize: Dimens.fontSize12,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _featuredBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            ImagePaths.sparkles,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            width: 12,
            height: 12,
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(width: 6),
          Text(
            'Featured',
            style: GoogleFonts.jetBrainsMono(
              fontSize: Dimens.fontSize10,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _projectCategoryBadge() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '<',
            style: GoogleFonts.inter(
              color: AppColors.primary,
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w500,
            ),
          ),
          WidgetSpan(
            child: GradientText(
              text: widget.category,
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
            ),
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
          ),
          TextSpan(
            text: ' />',
            style: GoogleFonts.inter(
              color: AppColors.primary,
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _label(String text) {
    return Text(
      text,
      style: GoogleFonts.jetBrainsMono(
        fontSize: Dimens.fontSize12,
        letterSpacing: 2.4,
        color: AppColors.greyColor500,
      ),
    );
  }
}
