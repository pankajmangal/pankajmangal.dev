import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/metric_chip.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/tech_chip.dart';

class ExperienceMobileTileLayout extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: _card(),
    );
  }

  Widget _card() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .06),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .2),
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
