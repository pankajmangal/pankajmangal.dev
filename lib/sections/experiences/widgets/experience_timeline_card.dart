import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/experiences/experience_card.dart';
import 'package:pankaj_portfolio/sections/experiences/models/experience_model.dart';

class ExperienceTimelineCard extends StatelessWidget {
  final ExperienceModel experience;
  final bool isLast;

  const ExperienceTimelineCard({
    super.key,
    required this.experience,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Column(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: const Color(0xFF4F46E5),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(
                        0xFF4F46E5,
                      ).withAlpha(2),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),

              if (!isLast)
                Container(
                  width: 1,
                  height: context.isMobile ? 620 : 440,
                  color: const Color(0xFFE2E8F0),
                ),
            ],
          ),
        ),

        Expanded(
          child: ExperienceCard(
            experience: experience,
          ),
        ),
      ],
    );
  }
}