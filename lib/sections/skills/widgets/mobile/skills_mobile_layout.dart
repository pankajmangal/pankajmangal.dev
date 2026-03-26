import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/skills/data/skills_data.dart';
import 'package:pankaj_portfolio/sections/skills/skill_card.dart';

class SkillsMobileLayout extends StatelessWidget {
  const SkillsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: ScrollManager.skillsKey,
      padding: getPadding(context),
      child: Column(
        children: [
          const Text(
            Strings.skillAndExpertise,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: Dimens.fontSize24,
              fontWeight: FontWeight.w700,
              color: AppColors.darkText,),
          ),
          const SizedBox(height: 10),
          const Text(
            Strings.skillDescription,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: skillsData.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 420,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              mainAxisExtent: 350,
            ),
            itemBuilder: (_, i) => SkillCard(category: skillsData[i]),
          ),
        ],
      ),
    );
  }
}