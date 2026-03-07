import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/social_icon.dart';
import 'package:pankaj_portfolio/core/utils/social_links.dart';

class FooterSocial extends StatelessWidget {

  final Function(String) openLink;
  const FooterSocial(this.openLink, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [

        Text(
          'Connect With Me',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            SocialIcon(
              Icons.code,
              SocialLinks.githubLink,
              openLink,
            ),
            const SizedBox(width: 16),
            SocialIcon(
              Icons.business,
              SocialLinks.linkedinLink,
              openLink,
            ),
            const SizedBox(width: 16),
            SocialIcon(
              Icons.alternate_email,
              SocialLinks.twitterLink,
              openLink,
            ),
            const SizedBox(width: 16),
            SocialIcon(
              Icons.email,
              SocialLinks.emailLink,
              openLink,
            ),
          ],
        )
      ],
    );
  }
}