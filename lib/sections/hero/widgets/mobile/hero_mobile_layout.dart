import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

class HeroMobileLayout extends StatelessWidget {
   const HeroMobileLayout({super.key, required this.controller, required this.animation});

  final AnimationController controller;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.heroKey,
      height: context.height,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      color: AppColors.lightWhite,
      child: Column(
        children: [
          const Spacer(),
          Column(
            children: [
              _profileImage(),
              const SizedBox(height: 30),
              _leftContent(),
            ],
          ),

          const Spacer(),

          _scrollIndicator(),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _leftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// BADGE
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

        /// NAME
        Text(
          Strings.greetingText,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: Dimens.fontSize28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        /// TYPEWRITER TEXT
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              Strings.animatedText1,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TypewriterAnimatedText(
              Strings.animatedText2,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TypewriterAnimatedText(
              Strings.animatedText3,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TypewriterAnimatedText(
              Strings.animatedText4,
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: Dimens.fontSize18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        /// DESCRIPTION
        SizedBox(
          width: double.infinity,
          child: Text(
            Strings.heroProfileContent,
            style: GoogleFonts.inter(
              fontSize: Dimens.fontSize14,
              color: Colors.grey[600],
              height: 1.7,
            ),
          ),
        ),

        const SizedBox(height: 40),

        /// BUTTONS
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PortfolioElevatedButton(text: Strings.viewProjects),
            const SizedBox(width: 20),
            PortfolioOutlineButton(text: Strings.contactMe, onPressed: (){},),
          ],
        ),

        const SizedBox(height: 30),

        /// SOCIAL ICONS
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PortfolioSocialIcon(assetPath: ImagePaths.github),
            PortfolioSocialIcon(assetPath: ImagePaths.linkedin),
            PortfolioSocialIcon(assetPath: ImagePaths.mail),
          ],
        )
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

  Widget _scrollIndicator() {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: SvgPicture.asset(
            ImagePaths.downArrow,
          ),
        );
      },
    );
  }
}
