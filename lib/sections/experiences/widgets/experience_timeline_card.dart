import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
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
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 60,
            child: Column(
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withAlpha(3),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                ),
      
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 1,
                      color: const Color(0xFFE2E8F0),
                    ),
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
      ),
    );
  }
}