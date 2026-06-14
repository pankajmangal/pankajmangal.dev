import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/experience_timeline_card.dart';
import 'package:pankaj_portfolio/widgets/texts/section_description.dart';
import 'package:pankaj_portfolio/widgets/texts/section_header.dart';
import 'package:pankaj_portfolio/widgets/texts/section_title.dart';

class ExperienceMobileWidget extends StatelessWidget {
  const ExperienceMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.experiencesKey,
      color: AppColors.whiteColor,
      padding: mobilePaddingSymmetry,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: Strings.experience.toUpperCase(),
            fontSize: Dimens.fontSize12, fontWeight: FontWeight.w500,),
          const SizedBox(height: 14),
          SectionTitle(title: Strings.experienceTitle,
            fontSize: Dimens.fontSize28, fontWeight: FontWeight.w700,),
          const SizedBox(height: 24),
          SectionDescription(title: Strings.experienceDesc,
            fontSize: Dimens.fontSize14, fontWeight: FontWeight.w400,),
          const SizedBox(height: 64),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: experiences.length,
            itemBuilder: (context, index) {
              return ExperienceTimelineCard(
                experience: experiences[index],
                isLast: index == experiences.length - 1,
              );
            },
          ),
        ],
      ),
    );
  }
}