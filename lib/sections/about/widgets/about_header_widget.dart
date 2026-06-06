import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutHeaderWidget extends StatelessWidget {
  const AboutHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ABOUT",
          style: GoogleFonts.inter(
            fontSize: 12,
            letterSpacing: 2,
            height: 1.65,
            fontWeight: FontWeight.w500,
            color: const Color(0xff4F46E5),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 900,
          child: Text(
            "Building scalable mobile platforms, leading engineering teams, and delivering measurable outcomes.",
            style: GoogleFonts.inter(
              fontSize: 32,
              height: 1.05,
              fontWeight: FontWeight.w700,
              color: const Color(0xff0F172A),
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 900,
          child: Text(
            "I help companies build scalable mobile products across Android,"
          " iOS and Web. \n\nOver the last 9+ years, I've architected "
    "cross-platform applications, led engineering teams, and delivered products"
    " used by hundreds of thousands of users. My focus is on clean architecture, "
    "performance optimization, CI/CD automation, and creating maintainable "
    "systems that help teams move faster. \n\nBeyond mobile development, I'm actively expanding into Python backend development and AI-powered applications, combining modern engineering practices with emerging technologies.",
            style: GoogleFonts.inter(
              fontSize: 16,
              height: 1.6,
              color: const Color(0xff6B7280),
            ),
          ),
        ),
      ],
    );
  }
}
