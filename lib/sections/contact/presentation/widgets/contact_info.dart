import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  Widget infoItem(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: const Color(0xFFE5EDFF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppColors.primary),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: Dimens.fontSize18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  value,
                  style: GoogleFonts.inter(
                    fontSize: Dimens.fontSize16,
                    color: AppColors.lightText,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Contact Information',
          style: GoogleFonts.inter(
            fontSize: Dimens.fontSize22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 30),

        infoItem(Icons.email_outlined,
            'Email', 'mangal.pankaj5@gmail.com'),

        infoItem(Icons.phone_outlined,
            'Phone', '+91 8920547478'),

        infoItem(Icons.location_on_outlined,
            'Location', 'Gurugram, India (Open to Remote)'),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color(0xFFF4F6FA),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Why Work With Me?',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              buildBullet('9+ years mobile development experience (5+ years Flutter)'),
              buildBullet('Clean architecture, scalable and maintainable codebases'),
              buildBullet('Performance optimization and crash reduction expertise'),
              buildBullet('CI/CD automation and production release management'),
              buildBullet('Cross-platform delivery (Android, iOS, Web)'),
              buildBullet('Strong collaboration with product & backend teams'),
            ],
          ),
        )
      ],
    );
  }

  Widget buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          const Icon(Icons.check,
              color: AppColors.primary, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 16,
                color: AppColors.lightText,
              ),
            ),
          )
        ],
      ),
    );
  }
}