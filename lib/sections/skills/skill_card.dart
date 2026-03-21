import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/skills/models/skill_category.dart';
import 'package:pankaj_portfolio/sections/skills/widgets/animated_bar.dart';

class SkillCard extends StatefulWidget {
  final SkillCategory category;

  const SkillCard({super.key, required this.category});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(Dimens.padding24),
        transform: Matrix4.translationValues(0, hover ? -8 : 0, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: hover ? 0.12 : 0.05),
              blurRadius: hover ? 20 : 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.circularRadius12),
                    gradient: LinearGradient(colors: widget.category.gradient),
                  ),
                  child: Icon(widget.category.icon, color: Colors.white),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    widget.category.title,
                    style: const TextStyle(
                      fontSize: Dimens.fontSize18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            ...widget.category.skills.map((skill) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text(skill.name)),
                        Text('${skill.percentage}%'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    AnimatedBar(
                      value: skill.percentage,
                      gradient: widget.category.gradient,
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}