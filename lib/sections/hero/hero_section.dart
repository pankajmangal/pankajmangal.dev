import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/desktop/hero_desktop_layout.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/mobile/hero_mobile_layout.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with SingleTickerProviderStateMixin {
  bool _wasMobile = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 80,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (!context.isMobile && _wasMobile) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            });
            _wasMobile = context.isMobile;
          }
          if (context.isMobile) return HeroMobileLayout();
          return HeroDesktopLayout();
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}