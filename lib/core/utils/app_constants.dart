import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/about/model/card_model.dart';
import 'package:pankaj_portfolio/sections/experiences/models/experience_model.dart';
import 'package:pankaj_portfolio/sections/hero/models/stat_item.dart';
import 'package:url_launcher/url_launcher.dart';

final items = [
  CardData(Strings.aboutCardTitle1, Strings.aboutCardDesc1, ImagePaths.scalableArchitecture),
  CardData(Strings.aboutCardTitle2, Strings.aboutCardDesc2, ImagePaths.crossPlatform),
  CardData(Strings.aboutCardTitle3, Strings.aboutCardDesc3, ImagePaths.performance),
  CardData(Strings.aboutCardTitle4, Strings.aboutCardDesc4, ImagePaths.stateManagement),
  CardData(Strings.aboutCardTitle5, Strings.aboutCardDesc5, ImagePaths.apiIntegration),
  CardData(Strings.aboutCardTitle6, Strings.aboutCardDesc6, ImagePaths.productThinking),
  CardData(Strings.aboutCardTitle7, Strings.aboutCardDesc7, ImagePaths.cIcDAutomation),
  CardData(Strings.aboutCardTitle8, Strings.aboutCardDesc8, ImagePaths.favourite),
];

const statsData = [
  StatItem(
    value: '9+',
    label: 'Years in Mobile',
  ),
  StatItem(
    value: '5+',
    label: 'Years in Flutter',
  ),
  StatItem(
    value: '500K+',
    label: 'Users Reached',
  ),
  StatItem(
    value: '40%',
    label: 'Faster Releases',
  ),
];

final experiences = [
  ExperienceModel(
    title: 'Flutter Lead Engineer',
    company: 'Mindmap Technologies',
    duration: 'Jan 2025 — Present',
    location: 'Bengaluru, India (Remote)',
    highlights: [
      'Led a team of 4–6 mobile engineers, driving architecture decisions, code reviews, and technical mentorship.',
      'Designed scalable Flutter applications using Clean Architecture, MVVM, BLoC, and Riverpod.',
      'Built reusable modular components that accelerated feature delivery across projects.',
      'Implemented GitHub Actions, GitLab CI, and Fastlane pipelines, reducing release time by 40%.',
      'Integrated REST & GraphQL APIs with microservice-based backend architectures.',
      'Reduced production crash rates through performance optimization and monitoring.'
    ],
    skills: [
      'Flutter',
      'Riverpod',
      'BLoC',
      'Clean Architecture',
      'GitHub Actions',
      'Fastlane',
    ],
  ),
  ExperienceModel(
    title: 'Senior Flutter Developer',
    company: 'Mobikasa',
    duration: 'Jun 2023 — Jan 2025',
    location: 'New Delhi, India',
    highlights: [
      'Led development of key modules for an E-commerce platform with 500K+ downloads.',
      'Designed and implemented a complete loyalty & rewards ecosystem.',
      'Improved checkout success rate by 25% through UX and performance enhancements.',
      'Integrated Shopify, REST, and GraphQL APIs for dynamic commerce experiences.',
      'Implemented analytics using Firebase, MoEngage, and CleverTap.',
      'Delivered significant performance improvements across Android, iOS, and Web.'
    ],
    skills: [
      'Flutter',
      'Shopify',
      'GraphQL',
      'Firebase',
      'MoEngage',
      'CleverTap',
    ],
  ),

  ExperienceModel(
    title: 'Flutter Developer',
    company: 'Alertus Technologies',
    duration: 'Oct 2022 — Jun 2023',
    location: 'Noida, India (Remote)',
    highlights: [
      'Built responsive Flutter applications for Android, iOS, Web, and Tablet platforms.',
      'Improved application stability by 20% through automated integration testing.',
      'Implemented accessibility features aligned with WCAG guidelines.',
      'Established code review processes and engineering documentation standards.',
      'Promoted modern Flutter architecture and engineering best practices.'
    ],
    skills: [
      'Flutter',
      'Flutter Web',
      'Accessibility',
      'Testing',
      'CI/CD',
    ],
  ),

  ExperienceModel(
    title: 'Android + Flutter Developer',
    company: 'SunTec India',
    duration: 'Dec 2020 — Oct 2022',
    location: 'New Delhi, India (Remote)',
    highlights: [
      'Developed and maintained high-traffic mobile applications with 500K+ downloads.',
      'Refactored legacy applications using MVVM and modular architecture.',
      'Implemented CI/CD practices to improve deployment efficiency.',
      'Improved conversion rates by 25% through UX and performance enhancements.',
      'Delivered stable production-grade applications across multiple domains.'
    ],
    skills: [
      'Flutter',
      'Android',
      'MVVM',
      'CI/CD',
      'Kotlin',
      'REST APIs',
      'BLoC/Getx State management',
    ],
  ),

  ExperienceModel(
    title: 'Android Developer',
    company: 'Early Career Journey',
    duration: 'Aug 2017 — Dec 2020',
    location: 'India',
    highlights: [
      'Built and launched multiple Android applications from concept to Play Store release.',
      'Worked across Delaine Technologies, Ecomaxgo LLP, Ads & Url, and Hartron.',
      'Developed strong foundations in Java, Kotlin, Android SDK, Material Design, and clean coding practices.',
      'Collaborated directly with clients and stakeholders to deliver business-focused solutions.',
    ],
    skills: [
      'Android',
      'Java',
      'Kotlin',
      'Jetpack Compose',
      'Material Design',
      'SQLite',
      'REST APIs',
      'Hilt/Koin DI',
    ],
  ),
];

EdgeInsets getPadding(BuildContext context) {
  if (context.isMobile) {
    return const EdgeInsets.symmetric(horizontal: 20, vertical: 60);
  } else if (context.isTablet) {
    return const EdgeInsets.symmetric(horizontal: 40, vertical: 80);
  } else {
    return const EdgeInsets.symmetric(horizontal: 80, vertical: 100);
  }
}

Future<void> openLink(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri,
    mode: LaunchMode.externalApplication, // browser / new tab
  )) {
    throw Exception('Could not launch $url');
  }
}

InputDecoration fieldDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    filled: true,
    fillColor: Colors.transparent,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Dimens.circularRadius12),
    ),
    contentPadding:
    const EdgeInsets.symmetric(horizontal: Dimens.padding16, vertical: Dimens.padding18),
  );
}

dynamic openLinkByLauncher(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  }
}