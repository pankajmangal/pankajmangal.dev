import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/responsive/breakpoints.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_form.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_info.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: context.horizontalPadding,
            vertical: 80,
          ),
          child: Column(
            children: [
              Text(
                Strings.getInTouch,
                style: GoogleFonts.inter(
                  fontSize: context.width < Breakpoints.tablet ? 26 : 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkText,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: 80,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width < Breakpoints.tablet ? 0 : 200,
                ),
                child: Text(
                  Strings.contactSectionDesc,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: AppColors.lightText,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              context.isDesktop
                  ? Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: const [
                  Expanded(child: ContactInfo()),
                  SizedBox(width: 60),
                  Expanded(child: ContactForm()),
                ],
              )
                  : Column(
                children: const [
                  ContactInfo(),
                  SizedBox(height: 40),
                  ContactForm(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}