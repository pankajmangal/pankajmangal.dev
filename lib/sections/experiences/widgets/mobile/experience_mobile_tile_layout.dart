import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/metric_chip.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/tech_chip.dart';

class ExperienceMobileTileLayout extends StatefulWidget {
  final String company;
  final String duration;
  final String role;
  final List<String> metrics;
  final List<String> points;
  final List<String> tech;

  const ExperienceMobileTileLayout({
    super.key,
    required this.company,
    required this.role,
    required this.duration,
    required this.metrics,
    required this.points,
    required this.tech,
  });

  @override
  State<ExperienceMobileTileLayout> createState() =>
      _ElegantExperienceCardState();
}

class _ElegantExperienceCardState
    extends State<ExperienceMobileTileLayout> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(bottom: 12),
        curve: Curves.easeOut,
        // padding: const EdgeInsets.only(left: 12, right: 12),
        transform: isHover
            ? (Matrix4.identity()..translate(0, -6))
            : Matrix4.identity(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: isHover
                  ? AppColors.primary.withValues(alpha: 0.25)
                  : Colors.black.withValues(alpha: 0.05),
              blurRadius: isHover ? 30 : 10,
              spreadRadius: isHover ? 2 : 0,
              offset: const Offset(0, 12),
            ),
          ],
          border: Border.all(
            color: isHover
                ? const Color(0xFF2563EB)
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.company,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${widget.role} • ${widget.duration}',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 18),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: widget.metrics
                          .map((m) => MetricChip(label: m))
                          .toList(),
                    ),
                    const SizedBox(height: 18),
                    ...widget.points.map(
                          (p) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.check,
                                color: AppColors.greyColor500, size: 20),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                p,
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: AppColors.lightText,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: widget.tech
                          .map((t) => TechChip(label: t))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
