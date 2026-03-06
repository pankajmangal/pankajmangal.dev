import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/footer/footer_section.dart';

class SocialIcon extends StatefulWidget {

  final IconData icon;
  final String url;
  final Function(String) openLink;

  const SocialIcon(
      this.icon,
      this.url,
      this.openLink, {
        super.key,
      });

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {

  bool hover = false;

  @override
  Widget build(BuildContext context) {

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),

      child: GestureDetector(
        onTap: () => widget.openLink(widget.url),

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),

          width: 50,
          height: 50,

          decoration: BoxDecoration(
            color: hover
                ? FooterSection.primary
                : FooterSection.iconBg,

            shape: BoxShape.circle,

            boxShadow: hover
                ? [
              BoxShadow(
                color: FooterSection.primary
                    .withValues(alpha: .5),
                blurRadius: 10,
              )
            ]
                : [],
          ),

          child: Icon(
            widget.icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}