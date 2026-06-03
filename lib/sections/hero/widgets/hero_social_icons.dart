import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/social_links.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_social_button.dart';

class HeroSocialIcons extends StatelessWidget {
  const HeroSocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
    );
  }
}
