import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/theme/theme_state.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/firebase_options.dart';
import 'package:pankaj_portfolio/sections/about/about_us_section.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_bloc.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/contact_section.dart';
import 'package:pankaj_portfolio/sections/experiences/experience_section.dart';
import 'package:pankaj_portfolio/sections/footer/footer_section.dart';
import 'package:pankaj_portfolio/sections/menu/bloc/nav_bloc.dart';
import 'package:pankaj_portfolio/sections/menu/portfolio_appbar.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/mobile/mobile_drawer_widget.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_bloc.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_event.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/projects_section.dart';
import 'package:pankaj_portfolio/sections/skills/skills_section.dart';
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
        BlocProvider(create: (_) => NavBloc()),
        BlocProvider(create: (_) => ThemeBloc()),
        BlocProvider(create: (_) => di.sl<ContactBloc>()),
        BlocProvider(create: (_) => di.sl<ProjectsBloc>()..add(FetchProjectsEvent())),
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PortfolioAppBar(controller: _controller,),
      endDrawer: Drawer(
        child: MobileDrawerWidget(controller: _controller),
      ),
      body: SingleChildScrollView(
        controller: ScrollManager.controller,
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ExperienceSection(),
            // HighlightsSection(),
            ProjectsSection(),
            // PortfolioSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}