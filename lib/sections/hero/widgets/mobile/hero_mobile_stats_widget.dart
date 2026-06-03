import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_stats_description_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/stat_card.dart';

class HeroMobileStatsWidget extends StatelessWidget {
  const HeroMobileStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: const Color(0xFFE5E7EB)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .03),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: StatCard(
                      stat: statsData[0],
                      showRightBorder: true,
                      showBottomBorder: true,
                    ),
                  ),
                  Expanded(
                    child: StatCard(
                      stat: statsData[1],
                      showBottomBorder: true,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: StatCard(
                      stat: statsData[2],
                      showRightBorder: true,
                    ),
                  ),
                  Expanded(
                    child: StatCard(
                      stat: statsData[3],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        HeroStatsDescriptionWidget(fontSize: Dimens.fontSize12,),
      ],
    );
  }
}
