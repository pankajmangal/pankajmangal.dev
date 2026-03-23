import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/theme/theme_state.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/firebase_options.dart';
import 'package:pankaj_portfolio/sections/about/about_us_section.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_bloc.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/contact_section.dart';
import 'package:pankaj_portfolio/sections/experiences/experience_section.dart';
import 'package:pankaj_portfolio/sections/footer/footer_section.dart';
import 'package:pankaj_portfolio/sections/menu/portfolio_appbar.dart';
import 'package:pankaj_portfolio/sections/skills/skills_section.dart';
import 'package:pankaj_portfolio/widgets/items/nav_item.dart';
import 'core/theme/theme_bloc.dart';
import 'core/theme/app_theme.dart';
import 'sections/hero/hero_section.dart';
import 'core/di/portfolio_di.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  //Initialized di....
  di.init();

  //Initialized firebase...
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc()),
        BlocProvider(create: (_) => di.sl<ContactBloc>()),
      ],
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
        child: SafeArea(
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              Divider(color: AppColors.background,),
              SizedBox(height: 24),
              NavItem(
                title: Strings.home,
                fontSize: Dimens.fontSize18,
                onTap: () {
                  ScrollManager.scrollTo(ScrollManager.heroKey);
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 24),
              NavItem(
                title: Strings.about,
                fontSize: Dimens.fontSize18,
                onTap: () {
                  ScrollManager.scrollTo(ScrollManager.aboutKey);
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 24),
              NavItem(
                title: Strings.skills,
                fontSize: Dimens.fontSize18,
                onTap: () {
                  ScrollManager.scrollTo(ScrollManager.skillsKey);
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 24),
              NavItem(
                title: Strings.experiences,
                fontSize: Dimens.fontSize18,
                onTap: () {
                  ScrollManager.scrollTo(ScrollManager.experiencesKey);
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 24),
              NavItem(
                title: Strings.projects,
                fontSize: Dimens.fontSize18,
                onTap: () {
                  ScrollManager.scrollTo(ScrollManager.projectsKey);
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 24),
              NavItem(
                title: Strings.contact,
                fontSize: Dimens.fontSize18,
                onTap: () {
                  ScrollManager.scrollTo(ScrollManager.contactKey);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollManager.controller,
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ExperienceSection(),
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