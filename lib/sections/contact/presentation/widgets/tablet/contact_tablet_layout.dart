import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_social_icons.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/email_me_button_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/download_cv_button_widget.dart';
import 'package:pankaj_portfolio/widgets/gradients/gradient_text.dart';
import 'package:pankaj_portfolio/widgets/texts/section_description.dart';
import 'package:pankaj_portfolio/widgets/texts/section_header.dart';
import 'package:pankaj_portfolio/widgets/texts/section_title.dart';

class ContactTabletLayout extends StatelessWidget {
  const ContactTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.contactKey,
      color: AppColors.whiteColor,
      padding: tabletPaddingSymmetry,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: Strings.contactHeader.toUpperCase(),
            fontSize: Dimens.fontSize14, fontWeight: FontWeight.w500,),
          const SizedBox(height: 14),
          SectionTitle(title: Strings.contactTitle,
            fontSize: Dimens.fontSize32, fontWeight: FontWeight.w700,),
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
                      const TextSpan(text: Strings.contactLookingFor),
                      WidgetSpan(
                        child: GradientText(
                          text: Strings.contactFlutterLead,
                          fontSize: Dimens.fontSize30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.8,
                        ),
                        alignment: PlaceholderAlignment.middle,
                      ),
                      const TextSpan(text: Strings.contactWhoDelivers),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 700,
                  child: SectionDescription(title: Strings.contactDesc,
                    fontSize: Dimens.fontSize16, fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,),
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
