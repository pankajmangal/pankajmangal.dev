import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/painter/grid_painter.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/desktop/hero_desktop_layout.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/mobile/hero_mobile_layout.dart';

class HeroSection extends StatelessWidget {
  HeroSection({super.key});
  bool _wasMobile = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFCFCFD),
      ),
      child: Stack(
        children: [
          // Grid
          Positioned.fill(
            child: CustomPaint(
              painter: GridPainter(),
            ),
          ),

          // Huge soft purple blur
          Positioned(
            right: -250,
            top: -50,
            child: IgnorePointer(
              child: Container(
                width: 900,
                height: 900,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF6366F1).withOpacity(.18),
                      blurRadius: 250,
                      spreadRadius: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}