import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/skills/models/skill_category.dart';
import 'package:pankaj_portfolio/sections/skills/models/skill_item.dart';

final skillsData = [

  SkillCategory(
    title: 'Flutter & Mobile',
    icon: Icons.phone_android,
    gradient: [Color(0xFF2563EB), Color(0xFF4F46E5)],
    skills: [
      SkillItem('Flutter SDK', 95),
      SkillItem('Dart Language', 95),
      SkillItem('Android', 85),
      SkillItem('iOS', 80),
    ],
  ),

  SkillCategory(
    title: 'State Management',
    icon: Icons.bolt,
    gradient: [Color(0xFF9333EA), Color(0xFF7C3AED)],
    skills: [
      SkillItem('BLoC/Cubit', 95),
      SkillItem('Riverpod', 85),
      SkillItem('Provider', 90),
      SkillItem('GetX', 95),
    ],
  ),

  SkillCategory(
    title: 'Backend & APIs',
    icon: Icons.storage,
    gradient: [Color(0xFF16A34A), Color(0xFF22C55E)],
    skills: [
      SkillItem('REST APIs', 95),
      SkillItem('GraphQL', 85),
      SkillItem('Firebase Auth', 85),
      SkillItem('JSON Parsing', 95),
    ],
  ),

  SkillCategory(
    title: 'UI/UX Implementation',
    icon: Icons.palette,
    gradient: [Color(0xFFEC4899), Color(0xFFDB2777)],
    skills: [
      SkillItem('Responsive Design', 90),
      SkillItem('Custom Animations', 85),
      SkillItem('Theme Management', 85),
      SkillItem('Figma to Flutter', 80),
    ],
  ),

  SkillCategory(
    title: 'DevOps & Tools',
    icon: Icons.settings,
    gradient: [Color(0xFFF97316), Color(0xFFEA580C)],
    skills: [
      SkillItem('Git', 90),
      SkillItem('GitHub Actions', 90),
      SkillItem('CI/CD', 90),
      SkillItem('Code Review', 90),
    ],
  ),

  SkillCategory(
    title: 'Architecture & Quality',
    icon: Icons.code,
    gradient: [Color(0xFF06B6D4), Color(0xFF0891B2)],
    skills: [
      SkillItem('Clean Architecture', 95),
      SkillItem('MVVM Pattern', 90),
      SkillItem('Modularization', 85),
      SkillItem('Testing', 85),
    ],
  ),

  SkillCategory(
    title: 'Performance & Analytics',
    icon: Icons.speed,
    gradient: [Color(0xFF6366F1), Color(0xFF4F46E5)],
    skills: [
      SkillItem('Performance Optimization', 90),
      SkillItem('Crashlytics', 85),
      SkillItem('Analytics', 85),
      SkillItem('Push Notifications', 85),
    ],
  ),

  SkillCategory(
    title: 'AI-Assisted Development',
    icon: Icons.auto_awesome,
    gradient: [Color(0xFF8B5CF6), Color(0xFF7C3AED)],
    skills: [
      SkillItem('Cursor', 85),
      SkillItem('Windsurf', 80),
      SkillItem('Code Refactoring', 90),
      SkillItem('Productivity Tools', 90),
    ],
  ),
];
//     SkillItem('Fastlane', 80),