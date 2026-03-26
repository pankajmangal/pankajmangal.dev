import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/social_links.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_animated_text_widget.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_elevated_button.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_outline_button.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_social_button.dart';
import 'package:pankaj_portfolio/widgets/indicator/scroll_indicator.dart';

class HeroMobileLayout extends StatelessWidget {
   const HeroMobileLayout({super.key, required this.controller, required this.animation});

  final AnimationController controller;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 650),
      child: Container(
        key: ScrollManager.heroKey,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        color: AppColors.lightWhite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              _profileImage(),
              const SizedBox(height: 30),
              _leftContent(),
              const SizedBox(height: 30),
              Text(
                Strings.scrollToExplore,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: Dimens.fontSize14,
                  color: Colors.grey[600],
                  height: 1.7,
                ),
              ),
              const SizedBox(height: 16),
              ScrollIndicator(onTap: () => ScrollManager.scrollTo(ScrollManager.aboutKey)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _leftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFE0E7FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            Strings.seniorFlutterEngineer,
            style: GoogleFonts.inter(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          Strings.greetingText,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: Dimens.fontSize28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        HeroAnimatedTextWidget(),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: Text(
            Strings.heroProfileContent,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: Dimens.fontSize14,
              color: Colors.grey[600],
              height: 1.7,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          runSpacing: 12,
          children: [
            PortfolioElevatedButton(text: Strings.viewProjects, onPressed: (){},),
            PortfolioOutlineButton(text: Strings.contactMe, onPressed: () => ScrollManager.scrollTo(ScrollManager.contactKey),),
          ],
        ),
        const SizedBox(height: 30),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          children: [
            PortfolioSocialButton(iconPath: ImagePaths.github, onTap: () => openLink(SocialLinks.githubLink)),
            PortfolioSocialButton(iconPath: ImagePaths.linkedin, onTap: () => openLink(SocialLinks.linkedinLink)),
            PortfolioSocialButton(iconPath: ImagePaths.mail, onTap: () => openLink(SocialLinks.emailLink)),
          ],
        ),
      ],
    );
  }

  Widget _profileImage() {
    double size = 220;

    return Center(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Container(
            width: size,
            height: size,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withValues(alpha: .25),
                  blurRadius: 40 * controller.value,
                  spreadRadius: 10 * controller.value,
                )
              ],
              image: const DecorationImage(
                image: AssetImage(ImagePaths.profileImg),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
