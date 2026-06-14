import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';

class MobileDrawerWidget extends StatefulWidget {
  const MobileDrawerWidget({super.key, required this.controller});

  final AnimationController controller;

  @override
  State<MobileDrawerWidget> createState() => _MobileDrawerWidgetState();
}

class _MobileDrawerWidgetState extends State<MobileDrawerWidget> {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.90),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: SafeArea(
            child: Column(
              children: [
                _header(),
                const Divider(height: 1),

                Expanded(
                  child: _menuItems(),
                ),

                _bottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          InkWell(
            onTap: closeMenu,
            child: const Icon(
              Icons.close,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItems() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28,
        top: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerItem(
            title: "About",
            onTap: () {},
          ),

          const SizedBox(height: 30),

          drawerItem(
            title: "Experience",
            onTap: () {},
          ),

          const SizedBox(height: 30),

          drawerItem(
            title: "Projects",
            active: true,
            onTap: () {},
          ),

          const SizedBox(height: 30),

          drawerItem(
            title: "Testimonials",
            onTap: () {},
          ),

          const SizedBox(height: 30),

          drawerItem(
            title: "Contact",
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget drawerItem({
    required String title,
    bool active = false,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: active
            ? BoxDecoration(
          color: const Color(0xffEEF2FF),
          borderRadius: BorderRadius.circular(100),
        )
            : null,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight:
            active ? FontWeight.w600 : FontWeight.w400,
            color: active
                ? const Color(0xff4F46E5)
                : const Color(0xff6B7280),
          ),
        ),
      ),
    );
  }

  Widget _bottomSection() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/github.svg',
              width: 22,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              width: 22,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail_outline),
          ),

          const Spacer(),

          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: () =>
                  ScrollManager.scrollTo(ScrollManager.contactKey),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                const Color(0xff4F46E5),
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(16),
                ),
              ),
              child: Text(
                Strings.hireMe,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void closeMenu() async {
    await widget.controller.reverse();
    if (!mounted) return;
    Navigator.of(context).pop();
  }
}
