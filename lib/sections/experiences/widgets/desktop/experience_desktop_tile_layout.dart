import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/metric_chip.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/tech_chip.dart';

/*
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
}*/

class ExperienceDesktopTileLayout extends StatefulWidget {
  final String company;
  final String duration;
  final String role;
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
  State<ExperienceDesktopTileLayout> createState() =>
      _ElegantExperienceCardState();
}

class _ElegantExperienceCardState
    extends State<ExperienceDesktopTileLayout> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(bottom: 28),
        padding: const EdgeInsets.all(26),
        transform: hovered
            ? (Matrix4.identity()..translate(0, -6))
            : Matrix4.identity(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // gradient: LinearGradient(
          //   colors: [
          //     Colors.white.withOpacity(.08),
          //     Colors.white.withOpacity(.03),
          //   ],
          // ),
          border: Border.all(
            color: Colors.white.withOpacity(.12),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: hovered
          //         ? Colors.blue.withOpacity(.15)
          //         : Colors.black.withOpacity(.08),
          //     blurRadius: hovered ? 24 : 12,
          //     offset: const Offset(0, 10),
          //   )
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Title
            Text(
              widget.company,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              "${widget.role} • ${widget.duration}",
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),

            const SizedBox(height: 18),

            /// Metrics
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: widget.metrics
                  .map((m) => MetricChip(label: m))
                  .toList(),
            ),

            const SizedBox(height: 18),

            /// Points
            ...widget.points.map(
                  (p) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle_outline,
                        size: 18),
                    const SizedBox(width: 10),
                    Expanded(child: Text(p)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// Tech chips
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
    );
  }
}


/*
class ExperienceDesktopTileLayout extends StatefulWidget {
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
  State<ExperienceDesktopTileLayout> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceDesktopTileLayout> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(bottom: 24),
        padding: const EdgeInsets.all(24),
        transform: isHovered
            ? (Matrix4.identity()..translate(0, -8))
            : Matrix4.identity(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(.05),
          border: Border.all(color: Colors.white12),
          boxShadow: isHovered
              ? [
            BoxShadow(
              color: Colors.blue.withOpacity(.15),
              blurRadius: 20,
              offset: const Offset(0, 10),
            )
          ]
              : [
            BoxShadow(
              color: Colors.black.withOpacity(.08),
              blurRadius: 10,
              offset: const Offset(0, 5),
            )
          ],
        ),
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
            const SizedBox(height: 6),
            Text(
              '${widget.role} • ${widget.duration}',
              style: TextStyle(color: Colors.grey[400]),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: widget.metrics
                  .map((m) => MetricChip(label: m))
                  .toList(),
            ),
            const SizedBox(height: 16),
            ...widget.points.map(
                  (p) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  children: [
                    const Icon(Icons.circle, size: 6),
                    const SizedBox(width: 10),
                    Expanded(child: Text(p)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children:
              widget.tech.map((t) => TechChip(label: t)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}*/
