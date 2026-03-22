import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/about/model/card_model.dart';
import 'package:url_launcher/url_launcher.dart';

final items = [
  CardData(Strings.aboutCardTitle1, Strings.aboutCardDesc1, ImagePaths.scalableArchitecture),
  CardData(Strings.aboutCardTitle2, Strings.aboutCardDesc2, ImagePaths.crossPlatform),
  CardData(Strings.aboutCardTitle3, Strings.aboutCardDesc3, ImagePaths.performance),
  CardData(Strings.aboutCardTitle4, Strings.aboutCardDesc4, ImagePaths.stateManagement),
  CardData(Strings.aboutCardTitle5, Strings.aboutCardDesc5, ImagePaths.apiIntegration),
  CardData(Strings.aboutCardTitle6, Strings.aboutCardDesc6, ImagePaths.productThinking),
  CardData(Strings.aboutCardTitle7, Strings.aboutCardDesc7, ImagePaths.cIcDAutomation),
  CardData(Strings.aboutCardTitle8, Strings.aboutCardDesc8, ImagePaths.favourite),
];

EdgeInsets getPadding(BuildContext context) {
  if (context.isMobile) {
    return const EdgeInsets.symmetric(horizontal: 20, vertical: 60);
  } else if (context.isTablet) {
    return const EdgeInsets.symmetric(horizontal: 40, vertical: 80);
  } else {
    return const EdgeInsets.symmetric(horizontal: 80, vertical: 100);
  }
}

Future<void> openLink(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication, // browser / new tab
  )) {
    throw Exception('Could not launch $url');
  }
}