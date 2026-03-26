import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_card.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_left_content.dart';

class AboutDesktopLayout extends StatelessWidget {
  const AboutDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.aboutKey,
      padding: EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 60,
      ),
      color: AppColors.lightWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Strings.aboutMe,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: Dimens.fontSize36,
              fontWeight: FontWeight.w700,
              color: AppColors.darkText,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 80,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: AboutLeftContent()),
              const SizedBox(width: 40),
              Expanded(
                child: _cardGrid(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 360,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: 240,
      ),
      itemBuilder: (context, index) {
        final item = items[index];

        return AboutCard(
          title: item.title,
          description: item.desc,
          icon: item.icon,
        );
      },
    );
  }
}
