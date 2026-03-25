import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/social_links.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_social_button.dart';

class FooterSocialWidget extends StatelessWidget {

  final Function(String) openLink;
  const FooterSocialWidget(this.openLink, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.connectWithMe,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 20),
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
}