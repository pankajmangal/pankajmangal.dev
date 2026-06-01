import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/social_links.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/open_to_work_badge.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/stats_section.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_elevated_button.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_outline_button.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_social_button.dart';

class HeroDesktopLayout extends StatelessWidget {
  const HeroDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OpenToWorkBadge(),
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I architect ',
                          style: GoogleFonts.inter(
                            fontSize: 64,
                            fontWeight: FontWeight.w800,
                            color: AppColors.heading,
                            height: 1.2,
                          ),
                        ),
                    TextSpan(
                      text: 'scalable',
                      style: GoogleFonts.inter(
                        fontSize: 64,
                        fontWeight: FontWeight.w800,
                        height: 1.4,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: [
                              Color(0xFF4F46E5),
                              Color(0xFF6366F1),
                              Color(0xFF8B5CF6),
                            ],
                          ).createShader(
                            const Rect.fromLTWH(
                              0,
                              0,
                              500,
                              100,
                            ),
                          ),
                      ),
                    ),
                        TextSpan(
                          text: '\nmobile experiences.',
                          style: GoogleFonts.inter(
                            fontSize: 64,
                            fontWeight: FontWeight.w800,
                            color: AppColors.heading,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hi, I\'m ',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColors.lightText,
                            height: 1.8,
                          ),
                        ),
                        TextSpan(
                          text: 'Pankaj Mangal',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            height: 1.8,
                          ),
                        ),
                        TextSpan(
                          text: ' — a Flutter Lead Engineer with 9+ years in mobile, shipping high-performance apps used by 500K+ users across iOS, Android & Web.',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColors.lightText,
                            height: 1.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 16,
                    runSpacing: 12,
                    children: [
                      PortfolioElevatedButton(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(Strings.viewProjects, style: TextStyle(color: AppColors.whiteColor,
                                fontSize: Dimens.fontSize14)),
                            SizedBox(width: Dimens.padding12,),
                            SvgPicture.asset(ImagePaths.arrowForward,
                              colorFilter: ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                              width: 18,
                              height: 18,
                              fit: BoxFit.scaleDown,)
                          ],
                        ),
                        onPressed: () =>
                            ScrollManager.scrollTo(ScrollManager.projectsKey),
                      ),
                      PortfolioOutlineButton(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(ImagePaths.download,
                              colorFilter: ColorFilter.mode(
                                Colors.black,
                                BlendMode.srcIn,
                              ),
                              width: 18,
                              height: 18,
                              fit: BoxFit.scaleDown,),
                            SizedBox(width: Dimens.padding12,),
                            Text(Strings.downloadCV, style: TextStyle(color: AppColors.blackColor,
                                fontSize: Dimens.fontSize14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        onPressed: () =>
                            ScrollManager.scrollTo(ScrollManager.contactKey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 10,
                    children: [
                      PortfolioSocialButton(
                        iconPath: ImagePaths.github,
                        onTap: () => openLink(SocialLinks.githubLink),
                      ),
                      PortfolioSocialButton(
                        iconPath: ImagePaths.linkedin,
                        onTap: () => openLink(SocialLinks.linkedinLink),
                      ),
                      PortfolioSocialButton(
                        iconPath: ImagePaths.mail,
                        onTap: () => openLink(SocialLinks.emailLink),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 80),
            Expanded(
              flex: 5,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 650,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withValues(alpha: .15),
                          blurRadius: 50,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Image.asset(ImagePaths.profileImg, fit: BoxFit.cover),
                    ),
                  ),

                  Positioned(
                    bottom: -30,
                    left: -30,
                    child: Container(
                      width: 250,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 20),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('CURRENTLY', style: TextStyle(letterSpacing: 0.8,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,)),
                          SizedBox(height: 5),
                          Text(
                            'Flutter Lead Engineer',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text('India · Remote-friendly',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 100),
        StatsSection()
      ],
    );
  }
}
