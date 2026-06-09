import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String problem;
  final String solution;
  final List<String> metrics;
  final List<String> tags;

  const ProjectCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.problem,
    required this.solution,
    required this.metrics,
    required this.tags,
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
            )
          ],
        ),
        child: Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _featuredBadge(),
          const SizedBox(height: 24),
          Text(
            widget.title,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.subtitle,
            style: GoogleFonts.inter(
              fontSize: 14,
              height: 1.5,
              color: const Color(0xFF6B7280),
            ),
          ),
          const SizedBox(height: 28),
          _label('PROBLEM'),
          const SizedBox(height: 8),
          Text(
            widget.problem,
            style: GoogleFonts.inter(
              fontSize: 14,
              height: 1.6,
              color: const Color(0xFF374151),
            ),
          ),
          const SizedBox(height: 18),
          _label('SOLUTION'),
          const SizedBox(height: 8),
          Text(
            widget.solution,
            style: GoogleFonts.inter(
              fontSize: 14,
              height: 1.6,
              color: const Color(0xFF374151),
            ),
          ),
          const SizedBox(height: 18),
          _label('IMPACT'),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.metrics
                .map(
                  (e) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                  ),
                ),
                child: Text(
                  e,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF374151),
                  ),
                ),
              ),
            )
                .toList(),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: widget.tags
                .map(
                  (e) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                  ),
                ),
                child: Text(
                  e,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ],
      ),
    )
      ),
    );
  }

  Widget _featuredBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.auto_awesome,
            size: 14,
            color: Color(0xFF4F46E5),
          ),
          const SizedBox(width: 6),
          Text(
            'Featured',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF4F46E5),
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
        fontSize: 12,
        letterSpacing: 4,
        color: const Color(0xFF6B7280),
      ),
    );
  }
}