import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/metric_chip.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/tech_chip.dart';

class ExperienceDesktopTileLayout extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
  final List<String> metrics;
  final List<String> points;
  final List<String> tech;

  const ExperienceDesktopTileLayout({
    super.key,
    required this.company,
    required this.role,
    required this.duration,
    required this.metrics,
    required this.points,
    required this.tech,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(.5),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
            Container(
              width: 2,
              height: 260,
              color: Colors.white10,
            )
          ],
        ),
        const SizedBox(width: 20),
        Expanded(child: _card()),
      ],
    );
  }

  Widget _card() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Header
          Text(
            company,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            '$role • $duration',
            style: TextStyle(color: Colors.grey[400]),
          ),

          const SizedBox(height: 14),

          /// Metrics
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: metrics.map((m) => MetricChip(label: m)).toList(),
          ),

          const SizedBox(height: 14),

          /// Points
          ...points.map(
                (p) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.circle, size: 6),
                  const SizedBox(width: 8),
                  Expanded(child: Text(p)),
                ],
              ),
            ),
          ),

          const SizedBox(height: 14),

          /// Tech
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: tech.map((t) => TechChip(label: t)).toList(),
          )
        ],
      ),
    );
  }
}