import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_elevated_button.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_outline_button.dart';
import 'package:pankaj_portfolio/widgets/icons/portfolio_social_icon.dart';
import 'package:pankaj_portfolio/widgets/indicator/scroll_indicator.dart';

class HeroDesktopLayout extends StatelessWidget {
  const HeroDesktopLayout({super.key, required this.controller, required this.animation});

  final AnimationController controller;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.heroKey,
      height: context.height,
      padding: EdgeInsets.symmetric(
        horizontal: 80,
      ),
      color: AppColors.lightWhite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _leftContent()),
                const SizedBox(width: 60),
                Expanded(child: _profileImage()),
              ],
            ),
            const SizedBox(height: 40),
            ScrollIndicator(onTap: () => ScrollManager.scrollTo(ScrollManager.aboutKey)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _leftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          textAlign: TextAlign.start,
          style: GoogleFonts.inter(
            fontSize: Dimens.fontSize42,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              Strings.animatedText1,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize24,
                fontWeight: FontWeight.w500,
              ),
            ),
            TypewriterAnimatedText(
              Strings.animatedText2,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize24,
                fontWeight: FontWeight.w500,
              ),
            ),
            TypewriterAnimatedText(
              Strings.animatedText3,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize24,
                fontWeight: FontWeight.w500,
              ),
            ),
            TypewriterAnimatedText(
              Strings.animatedText4,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 520,
          child: Text(
            Strings.heroProfileContent,
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              fontSize: Dimens.fontSize16,
              color: Colors.grey[600],
              height: 1.7,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 16,
          runSpacing: 12,
          children: [
            PortfolioElevatedButton(text: Strings.viewProjects, onPressed: (){},),
            PortfolioOutlineButton(text: Strings.contactMe, onPressed: (){},),
          ],
        ),
        const SizedBox(height: 30),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 12,
          children: [
            PortfolioSocialIcon(assetPath: ImagePaths.github),
            PortfolioSocialIcon(assetPath: ImagePaths.linkedin),
            PortfolioSocialIcon(assetPath: ImagePaths.mail),
          ],
        ),
      ],
    );
  }

  Widget _profileImage() {
    double size = 360;

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