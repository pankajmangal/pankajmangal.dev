import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighlightsSection extends StatelessWidget {
  const HighlightsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int crossAxisCount;
    if (width < 700) {
      crossAxisCount = 1;
    } else if (width < 1100) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 3;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _fadeIn(
                delay: 0,
                child: Text(
                  "Engineering Highlights",
                  style: GoogleFonts.inter(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _fadeIn(
                delay: 150,
                child: Text(
                  "Selected production-level contributions with measurable impact.",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              const SizedBox(height: 60),
              _fadeIn(
                delay: 300,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    HighlightCard(
                      metric: "30%",
                      title: "Crash Reduction",
                      description:
                      "Optimized memory usage and rendering performance, reducing production crash rate significantly.",
                    ),
                    HighlightCard(
                      metric: "40%",
                      title: "Faster Release Cycles",
                      description:
                      "Implemented CI/CD pipelines using GitHub Actions & GitLab CI, improving deployment speed.",
                    ),
                    HighlightCard(
                      metric: "500K+",
                      title: "Scalable User Base",
                      description:
                      "Delivered high-performance applications supporting large active user bases across platforms.",
                    ),
                    HighlightCard(
                      metric: "25%",
                      title: "Conversion Growth",
                      description:
                      "Improved UX architecture and checkout flow, increasing conversion and engagement.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fadeIn({required Widget child, required int delay}) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 20, end: 0),
      duration: Duration(milliseconds: 700 + delay),
      curve: Curves.easeOut,
      builder: (context, value, childWidget) {
        return Transform.translate(
          offset: Offset(0, value),
          child: Opacity(
            opacity: 1 - (value / 20),
            child: childWidget,
          ),
        );
      },
      child: child,
    );
  }
}

class HighlightCard extends StatelessWidget {
  final String metric;
  final String title;
  final String description;

  const HighlightCard({
    super.key,
    required this.metric,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            metric,
            style: GoogleFonts.inter(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: 15,
              height: 1.6,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}