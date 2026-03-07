import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_brand.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_links.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_social.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  static const bgColor = Color(0xFF0B1A2F);
  static const primary = Color(0xFF4F9CF9);
  static const textLight = Color(0xFF9CA3AF);
  static const divider = Color(0xFF1F2A44);
  static const iconBg = Color(0xFF16243A);

  Future openLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: bgColor,
          padding: EdgeInsets.symmetric(
            horizontal: context.horizontalPadding,
            vertical: 60,
          ),
          child: Column(
            children: [

              /// TOP AREA
              context.isMobile
                  ? Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const FooterBrand(),
                  const SizedBox(height: 40),
                  const FooterLinks(),
                  const SizedBox(height: 40),
                  FooterSocial(openLink),
                ],
              )
                  : Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const FooterBrand(),
                  const FooterLinks(),
                  FooterSocial(openLink),
                ],
              ),

              const SizedBox(height: 40),

              Container(height: 1, color: divider),

              const SizedBox(height: 20),

              /// COPYRIGHT
              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  Text(
                    "© 2026 Pankaj Mangal. Made with ",
                    style: GoogleFonts.inter(
                        color: textLight),
                  ),
                  const Icon(Icons.favorite,
                      color: Colors.red, size: 18),
                  Text(
                    " using Flutter & React",
                    style: GoogleFonts.inter(
                        color: textLight),
                  ),
                ],
              )
            ],
          ),
        ),

        /// SCROLL TO TOP BUTTON
        Positioned(
          right: 40,
          bottom: 40,
          child: FloatingActionButton(
            backgroundColor: primary,
            onPressed: () {
              Scrollable.ensureVisible(
                context,
                duration: const Duration(milliseconds: 600),
              );
            },
            child: const Icon(Icons.keyboard_arrow_up),
          ),
        )
      ],
    );
  }
}