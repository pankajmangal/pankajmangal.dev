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
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _wasMobile = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 12).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (!context.isMobile && _wasMobile) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (Scaffold.of(context).isDrawerOpen) {
              Navigator.of(context).pop();
            }
          });
          _wasMobile = context.isMobile;
        }
        if (context.isMobile) return HeroMobileLayout(controller: _controller, animation: _animation);
        return HeroDesktopLayout(controller: _controller, animation: _animation);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}