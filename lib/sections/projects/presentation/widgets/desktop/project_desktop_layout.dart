import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/texts/section_description.dart';
import 'package:pankaj_portfolio/widgets/texts/section_header.dart';
import 'package:pankaj_portfolio/widgets/texts/section_title.dart';

class ProjectDesktopLayout extends StatelessWidget {
  const ProjectDesktopLayout({super.key, required this.itemWidth});
  final double itemWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.projectsKey,
      padding: desktopPaddingSymmetry,
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: Strings.projectHeader.toUpperCase(),
            fontSize: Dimens.fontSize14, fontWeight: FontWeight.w500,),
          const SizedBox(height: 16),
          SizedBox(
            width: 900,
            child: SectionTitle(title: Strings.projectTitle,
              fontSize: Dimens.fontSize32, fontWeight: FontWeight.w700,),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 900,
            child: SectionDescription(title: Strings.projectDesc,
              fontSize: Dimens.fontSize16, fontWeight: FontWeight.w400,),
          ),
          const SizedBox(height: 64),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: projects.map((project) {
              return SizedBox(width: itemWidth, child: project);
            }).toList(),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
