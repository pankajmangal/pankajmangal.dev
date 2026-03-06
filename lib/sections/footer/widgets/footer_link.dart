import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/sections/footer/footer_section.dart';

class FooterLink extends StatefulWidget {
  final String text;

  const FooterLink(this.text, {super.key});

  @override
  State<FooterLink> createState() => _FooterLinkState();
}

class _FooterLinkState extends State<FooterLink> {

  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hovering = true),
      onExit: (_) => setState(() => hovering = false),

      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        style: GoogleFonts.inter(
          color: hovering
              ? FooterSection.primary
              : FooterSection.textLight,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(widget.text),
        ),
      ),
    );
  }
}