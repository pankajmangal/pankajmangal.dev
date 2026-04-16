import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/highlight_text_extension.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class AboutLeftContent extends StatelessWidget {
  const AboutLeftContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: Dimens.fontSize16,
            height: 1.8,
          ),
          children: [
            'I\'m a '.highlight(),
            'Flutter Lead Engineer'.highlight(isHighlight: true),
            ' with '.highlight(),
            '9+ years'.highlight(isHighlight: true),
            ' of experience in mobile development, including '.highlight(),
            '5+ years'.highlight(isHighlight: true),
            ' specializing in '.highlight(),
            'Flutter'.highlight(isHighlight: true),
            '. I build '.highlight(),
            'scalable, high-performance'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ' applications across Android, iOS, and Web'.highlight(),
            ' using '.highlight(),
            'clean architecture'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ' and '.highlight(),
            'modern engineering practices'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            '.\n\n'.highlight(),

            'I specialize in designing '.highlight(),
            'modular'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ', maintainable systems using '.highlight(),
            'BLoC, Riverpod, and MVVM'.highlight(isHighlight: true),
            ', with strong expertise in '.highlight(),
            'REST/GraphQL API integrations'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ' , '.highlight(),
            'performance optimization'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ', and '.highlight(),
            'building responsive UIs'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ', production-ready user interfaces.\n\n'.highlight(),

            'I have delivered applications with '.highlight(),
            '500K+ users'.highlight(isHighlight: true),
            ', improved app '.highlight(),
            'performance and stability'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ', and reduced crash rates significantly. '.highlight(),
            'I enjoy solving '.highlight(),
            'complex engineering problems'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ', '.highlight(),
            'optimizing user experiences'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ', and '.highlight(),
            'collaborating'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ' with '.highlight(),
            'cross-functional teams'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ' to ship impactful products.\n\n'.highlight(),

            'Beyond development, I actively leverage '.highlight(),
            'AI-assisted tools'.highlight(isHighlight: true),
            ' to improve productivity, refactor codebases, and maintain high engineering standards. I’m passionate about '.highlight(),
            'continuous learning'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            ' and building software that creates '.highlight(),
            'real-world impact'.highlight(isHighlight: true, highlightColor: AppColors.blackColor),
            '.\n\n'.highlight(),
          ],
        )
    );
  }
}
