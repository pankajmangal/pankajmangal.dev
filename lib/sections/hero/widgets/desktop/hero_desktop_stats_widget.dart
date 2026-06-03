import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_stats_description_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/stat_card.dart';

class HeroDesktopStatsWidget extends StatelessWidget {
  const HeroDesktopStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(
            maxWidth: 1600,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: const Color(0xFFE5E7EB),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .03),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: List.generate(
              statsData.length,
                  (index) => Expanded(
                child: StatCard(
                  stat: statsData[index],
                  showRightBorder:
                  index != statsData.length - 1,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        HeroStatsDescriptionWidget(fontSize: Dimens.fontSize14,),
      ],
    );
  }
}