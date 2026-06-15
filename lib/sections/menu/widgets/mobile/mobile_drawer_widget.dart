import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_social_icons.dart';

class MobileDrawerWidget extends StatelessWidget {
  final VoidCallback onMenuTap;

  const MobileDrawerWidget({
    super.key,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Color(0xffE5E7EB),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _menuItem(
            title: Strings.about,
            onTap: () => _callToSection(ScrollManager.aboutKey),
          ),
          _menuItem(
            title: Strings.experience,
            onTap: () => _callToSection(ScrollManager.experiencesKey),
          ),
          _menuItem(
            title: Strings.projects,
            onTap: () => _callToSection(ScrollManager.projectsKey),
          ),
          // _menuItem(
          //   title: 'Testimonials',
          //   onTap: () => _callToSection(ScrollManager.contactKey),
          // ),
          _menuItem(
            title: Strings.contact,
              onTap: () => _callToSection(ScrollManager.contactKey)
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeroSocialIcons(),
              SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: () => _callToSection(ScrollManager.contactKey),
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
        ],
      ),
    );
  }

  Widget _menuItem({
    required String title,
    bool active = false,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
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
            fontSize: Dimens.fontSize18,
            fontWeight:
            active ? FontWeight.w600 : FontWeight.w400,
            color: active
                ? AppColors.primary
                : const Color(0xff6B7280),
          ),
        ),
      ),
    );
  }

  void _callToSection(GlobalKey key){
    onMenuTap();
    ScrollManager.scrollTo(key);
  }
}
