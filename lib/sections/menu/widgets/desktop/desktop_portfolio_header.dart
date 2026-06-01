import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/social_links.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/nav_item.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_social_button.dart';

class DesktopPortfolioHeader extends StatelessWidget {
  const DesktopPortfolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .85),
        border: Border(
          bottom: BorderSide(
            color: AppColors.border,
          ),
        ),
      ),
      child: Row(
        children: [

          /// Logo
          Expanded(
            flex: 2,
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "<",
                        style: GoogleFonts.inter(
                          color: AppColors.heading,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "pankaj",
                        style: GoogleFonts.inter(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ".dev />",
                        style: GoogleFonts.inter(
                          color: AppColors.heading,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Menu
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavItem(
                  title: Strings.about,
                  onTap: () => ScrollManager.scrollTo(ScrollManager.aboutKey),
                ),
                NavItem(
                  title: Strings.experiences,
                  onTap: () => ScrollManager.scrollTo(ScrollManager.experiencesKey),
                ),
                NavItem(
                  title: Strings.projects,
                  onTap: () => ScrollManager.scrollTo(ScrollManager.projectsKey),
                ),
                NavItem(
                  title: Strings.contact,
                  onTap: () => ScrollManager.scrollTo(ScrollManager.contactKey),
                ),
              ],
            ),
          ),

          /// Actions
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PortfolioSocialButton(iconPath: ImagePaths.github, onTap: () => openLink(SocialLinks.githubLink)),
                const SizedBox(width: 6),
                PortfolioSocialButton(iconPath: ImagePaths.linkedin, onTap: () => openLink(SocialLinks.linkedinLink)),
                const SizedBox(width: 12),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      AppColors.primary,
                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(
                            14),
                      ),
                    ),
                    child: const Text(
                      "Hire me",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}