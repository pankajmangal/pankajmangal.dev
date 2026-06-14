import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/current_role_card.dart';

class HeroImageWidget extends StatelessWidget {
  const HeroImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        late final double imageWidth;
        late final double imageHeight;
        late final double cardWidth;
        late final double cardLeft;
        late final double cardBottom;
        late final double cardPadding;
        late final double imageRadius;

        if (screenWidth >= 1400) {
          imageWidth = 620;
          imageHeight = 700;

          cardWidth = 260;
          cardLeft = -30;
          cardBottom = -30;

          cardPadding = 24;
          imageRadius = 32;
        } else if (screenWidth >= 1200) {
          imageWidth = 560;
          imageHeight = 640;

          cardWidth = 250;
          cardLeft = -30;
          cardBottom = -30;

          cardPadding = 24;
          imageRadius = 32;
        } else if (screenWidth >= 992) {
          imageWidth = screenWidth * .42;
          imageHeight = imageWidth * 1.15;

          cardWidth = 240;
          cardLeft = -15;
          cardBottom = -20;

          cardPadding = 22;
          imageRadius = 30;
        } else if (screenWidth >= 768) {
          imageWidth = screenWidth * .60;
          imageHeight = imageWidth * 1.20;

          cardWidth = 220;
          cardLeft = -15;
          cardBottom = -20;

          cardPadding = 20;
          imageRadius = 28;
        } else {
          imageWidth = screenWidth * .85;
          imageHeight = imageWidth * 1.30;

          cardWidth = imageWidth * .72;
          cardLeft = 16;
          cardBottom = -15;

          cardPadding = 18;
          imageRadius = 24;
        }

        return SizedBox(
          width: imageWidth,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: imageWidth,
                height: imageHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(imageRadius),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: .25),
                      blurRadius: 120,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(imageRadius),
                  child: Image.asset(
                    ImagePaths.profileImg,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                left: cardLeft,
                bottom: cardBottom,
                child: CurrentRoleCard(
                  width: cardWidth,
                  padding: cardPadding,
                  isMobile: screenWidth < 768,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}