import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
      child: Column(
        children: [

          /// SECTION TITLE
          Text(
            "About Me",
            style: GoogleFonts.inter(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: AppColors.darkText,
            ),
          ),

          const SizedBox(height: 12),

          /// BLUE UNDERLINE
          Container(
            width: 80,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          const SizedBox(height: 60),

          /// CONTENT
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// LEFT TEXT
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "I'm a Flutter developer with over 5 years of experience building mobile applications. My passion lies in creating beautiful, performant apps that users love to interact with.",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        height: 1.7,
                        color: AppColors.lightText,
                      ),
                    ),

                    const SizedBox(height: 24),

                    Text(
                      "I specialize in Flutter and Dart, with expertise in state management, animations, and integrating with various backend services. I'm constantly learning and staying up-to-date with the latest Flutter updates and best practices.",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        height: 1.7,
                        color: AppColors.lightText,
                      ),
                    ),

                    const SizedBox(height: 24),

                    Text(
                      "When I'm not coding, you can find me contributing to open-source projects, writing technical blogs, or mentoring aspiring developers.",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        height: 1.7,
                        color: AppColors.lightText,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 60),

              /// RIGHT CARDS GRID
              Expanded(
                flex: 2,
                child: Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [

                    AboutCard(
                      icon: Icons.code,
                      title: "Clean Code",
                      description:
                      "Writing maintainable and scalable Flutter applications",
                    ),

                    AboutCard(
                      icon: Icons.phone_android,
                      title: "Cross-Platform",
                      description:
                      "Building apps for iOS, Android, and Web from a single codebase",
                    ),

                    AboutCard(
                      icon: Icons.flash_on,
                      title: "Performance",
                      description:
                      "Optimizing apps for smooth 60fps experiences",
                    ),

                    AboutCard(
                      icon: Icons.people,
                      title: "User-Focused",
                      description:
                      "Creating intuitive interfaces with excellent UX",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const AboutCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF2F7),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Icon(
            icon,
            color: AppColors.primary,
            size: 28,
          ),

          const SizedBox(height: 16),

          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.darkText,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: 16,
              height: 1.6,
              color: AppColors.lightText,
            ),
          ),
        ],
      ),
    );
  }
}