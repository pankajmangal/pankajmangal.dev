import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_social_icons.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/email_me_button_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/download_cv_button_widget.dart';

import '../../../../../widgets/gradients/gradient_text.dart';

class ContactDesktopLayout extends StatelessWidget {
  const ContactDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'GET IN TOUCH',
            style: GoogleFonts.inter(
              fontSize: 12,
              letterSpacing: 2,
              height: 1.65,
              fontWeight: FontWeight.w500,
              color: const Color(0xff4F46E5),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Let's build something great.",
            style: GoogleFonts.inter(
              fontSize: 32,
              height: 1.05,
              fontWeight: FontWeight.w700,
              color: const Color(0xff0F172A),
            ),
          ),
          const SizedBox(height: 44),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(36),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: const Color(0xFFE5E7EB)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xFFF8FAFC), const Color(0xFFF4F4FF)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(3),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF111827),
                    ),
                    children: [
                      const TextSpan(text: 'Looking for a '),
                      WidgetSpan(
                        child: GradientText(
                          text: 'Flutter Lead',
                          fontSize: Dimens.fontSize30,
                          fontWeight: FontWeight.w600,
                        ),
                        alignment: PlaceholderAlignment.middle,
                      ),
                      const TextSpan(text: ' who delivers?'),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 700,
                  child: Text(
                    "I'm open to Senior Flutter, Lead Engineer, and Mobile Architecture roles. Let's discuss how I can help your team build scalable, high-quality mobile products.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      height: 1.7,
                      color: const Color(0xFF6B7280),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 16,
                  runSpacing: 12,
                  children: [EmailMeButtonWidget(), DownloadCvButtonWidget()],
                ),
                const SizedBox(height: 24),
                ContactSocialIcons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
