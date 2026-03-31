import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/nav_item.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/staggered_menu_item.dart';

class MobileDrawerWidget extends StatefulWidget {
  const MobileDrawerWidget({super.key, required this.controller});

  final AnimationController controller;

  @override
  State<MobileDrawerWidget> createState() => _MobileDrawerWidgetState();
}

class _MobileDrawerWidgetState extends State<MobileDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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

                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => closeMenu(),
                )
              ],
            ),
          ),
          Divider(color: AppColors.background,),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: StaggeredMenuItem(animation: CurvedAnimation(
              parent: widget.controller,
              curve: const Interval(0.0, 0.2, curve: Curves.easeOut),
            ), child: NavItem(
              title: Strings.home,
              fontSize: Dimens.fontSize18,
              onTap: () {
                ScrollManager.scrollTo(ScrollManager.heroKey);
                Navigator.pop(context);
              },
            )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: StaggeredMenuItem(animation: CurvedAnimation(
              parent: widget.controller,
              curve: const Interval(0.1, 0.3, curve: Curves.easeOut),
            ), child: NavItem(
              title: Strings.about,
              fontSize: Dimens.fontSize18,
              onTap: () {
                ScrollManager.scrollTo(ScrollManager.aboutKey);
                Navigator.pop(context);
              },
            )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: StaggeredMenuItem(animation: CurvedAnimation(
              parent: widget.controller,
              curve: const Interval(0.2, 0.4, curve: Curves.easeOut),
            ), child: NavItem(
              title: Strings.skills,
              fontSize: Dimens.fontSize18,
              onTap: () {
                ScrollManager.scrollTo(ScrollManager.skillsKey);
                Navigator.pop(context);
              },
            )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: StaggeredMenuItem(animation: CurvedAnimation(
              parent: widget.controller,
              curve: const Interval(0.3, 0.5, curve: Curves.easeOut),
            ), child: NavItem(
              title: Strings.experiences,
              fontSize: Dimens.fontSize18,
              onTap: () {
                ScrollManager.scrollTo(ScrollManager.experiencesKey);
                Navigator.pop(context);
              },
            )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: StaggeredMenuItem(animation: CurvedAnimation(
              parent: widget.controller,
              curve: const Interval(0.4, 0.6, curve: Curves.easeOut),
            ), child: NavItem(
              title: Strings.projects,
              fontSize: Dimens.fontSize18,
              onTap: () {
                ScrollManager.scrollTo(ScrollManager.projectsKey);
                Navigator.pop(context);
              },
            )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: StaggeredMenuItem(animation: CurvedAnimation(
              parent: widget.controller,
              curve: const Interval(0.5, 0.7, curve: Curves.easeOut),
            ), child: NavItem(
              title: Strings.contact,
              fontSize: Dimens.fontSize18,
              onTap: () {
                ScrollManager.scrollTo(ScrollManager.contactKey);
                Navigator.pop(context);
              },
            )),
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
