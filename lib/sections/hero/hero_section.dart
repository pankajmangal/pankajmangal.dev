import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

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
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 80),
      color: const Color(0xFFF6F7FB),
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _leftContent()),
              const SizedBox(width: 60),
              Expanded(child: _profileImage()),
            ],
          ),
          const Spacer(),

          _scrollIndicator(),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _leftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// BADGE
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFE0E7FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Flutter Developer",
            style: GoogleFonts.inter(
              color: const Color(0xFF2563EB),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(height: 30),

        /// NAME
        Text(
          "Hi, I'm Pankaj Mangal",
          style: GoogleFonts.inter(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        /// TYPEWRITER TEXT
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              "Building Beautiful Mobile Apps",
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            TypewriterAnimatedText(
              "Flutter • Clean Architecture • Scalable Apps",
              speed: const Duration(milliseconds: 50),
              textStyle: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        /// DESCRIPTION
        SizedBox(
          width: 520,
          child: Text(
            "Passionate Flutter developer specializing in high-performance, scalable cross-platform applications with elegant UI and clean architecture.",
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Colors.grey[600],
              height: 1.7,
            ),
          ),
        ),

        const SizedBox(height: 40),

        /// BUTTONS
        Row(
          children: [
            _primaryButton("View Projects"),
            const SizedBox(width: 20),
            _outlineButton("Contact Me"),
          ],
        ),

        const SizedBox(height: 30),

        /// SOCIAL ICONS
        Row(
          children: [
            _socialIcon(FontAwesomeIcons.github),
            _socialIcon(FontAwesomeIcons.linkedin),
            _socialIcon(FontAwesomeIcons.envelope),
          ],
        )
      ],
    );
  }

  Widget _profileImage() {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            padding: const EdgeInsets.all(6),
            width: 360,
            height: 360,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(.25),
                  blurRadius: 40 * _controller.value,
                  spreadRadius: 10 * _controller.value,
                )
              ],
              image: const DecorationImage(
                image: AssetImage("assets/profile.png"),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _primaryButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2563EB),
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }

  Widget _outlineButton(String text) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFF2563EB)),
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: const Text(
        "Contact Me",
        style: TextStyle(color: Color(0xFF2563EB)),
      ),
    );
  }

  Widget _socialIcon(IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 8,
          )
        ],
      ),
      child: Icon(icon, size: 18),
    );
  }

  Widget _scrollIndicator() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: const Icon(
            Icons.keyboard_arrow_down,
            size: 32,
            color: Colors.grey,
          ),
        );
      },
    );
  }
}