import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/skills/models/skill_item.dart';

class SkillCategory {
  final String title;
  final IconData icon;
  final List<Color> gradient;
  final List<SkillItem> skills;

  SkillCategory({
    required this.title,
    required this.icon,
    required this.gradient,
    required this.skills,
  });
}