import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/colors.dart';
import 'package:pankaj_portfolio/core/text_styles.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      height: 700,
      child: Row(
        children: [
          /// LEFT CONTENT
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Badge
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.badgeBg,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Flutter Developer",
                    style: AppTextStyles.subtitle.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Title
                RichText(
                  text: TextSpan(
                    style: AppTextStyles.title,
                    children: [
                      const TextSpan(text: "Hi, I'm "),
                      TextSpan(
                        text: "Pankaj Mangal",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Building Beautiful Mobile Apps",
                  style: AppTextStyles.subtitle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkText,
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: 500,
                  child: Text(
                    "Passionate Flutter developer specializing in creating high-performance, cross-platform mobile applications with elegant UI/UX design.",
                    style: AppTextStyles.description,
                  ),
                ),

                const SizedBox(height: 40),

                /// Buttons
                Row(
                  children: [

                    /// Primary Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "View Projects",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                    const SizedBox(width: 20),

                    /// Outline Button
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColors.primary, width: 2),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Contact Me",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// RIGHT IMAGE
          Expanded(
            child: Center(
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  image: const DecorationImage(
                    image: AssetImage("assets/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}