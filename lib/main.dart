import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/utils/colors.dart';
import 'package:pankaj_portfolio/core/theme/theme_state.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/about/about_us_section.dart';
import 'package:pankaj_portfolio/sections/contact/contact_section.dart';
import 'package:pankaj_portfolio/sections/footer/footer_section.dart';
import 'package:pankaj_portfolio/sections/hero/portfolio_appbar.dart';
import 'package:pankaj_portfolio/sections/portfolio/portfolio_section.dart';
import 'package:pankaj_portfolio/sections/skills/skills_section.dart';
import 'package:pankaj_portfolio/widgets/items/nav_item.dart';
import 'core/theme/theme_bloc.dart';
import 'core/theme/app_theme.dart';
import 'sections/hero/hero_section.dart';
import 'sections/highlights/highlights_section.dart';
import 'sections/projects/projects_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.themeMode,
            themeAnimationDuration: const Duration(milliseconds: 300),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: const PortfolioAppBar(),
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            NavItem(
              title: Strings.home,
              fontSize: Dimens.fontSize20,
              onTap: () =>
                  ScrollManager.scrollTo(ScrollManager.heroKey),
            ),
            SizedBox(height: 24),
            NavItem(
              title: Strings.about,
              fontSize: Dimens.fontSize20,
              onTap: () =>
                  ScrollManager.scrollTo(ScrollManager.aboutKey),
            ),
            SizedBox(height: 24),
            NavItem(
              title: Strings.skills,
              fontSize: Dimens.fontSize20,
              onTap: () =>
                  ScrollManager.scrollTo(ScrollManager.skillsKey),
            ),
            SizedBox(height: 24),
            NavItem(
              title: Strings.experiences,
              fontSize: Dimens.fontSize20,
              onTap: () =>
                  ScrollManager.scrollTo(ScrollManager.experiencesKey),
            ),
            SizedBox(height: 24),
            NavItem(
              title: Strings.projects,
              fontSize: Dimens.fontSize20,
              onTap: () =>
                  ScrollManager.scrollTo(ScrollManager.projectsKey),
            ),
            SizedBox(height: 24),
            NavItem(
              title: Strings.contact,
              fontSize: Dimens.fontSize20,
              onTap: () =>
                  ScrollManager.scrollTo(ScrollManager.contactKey),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ContactSection(),
            FooterSection(),
            // HighlightsSection(),
            // ProjectsSection(),
            // PortfolioSection()
          ],
        ),
      ),
    );
  }
}