import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/desktop/footer_desktop_layout.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/mobile/footer_mobile_layout.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/tablet/footer_tablet_layout.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (context.isMobile) {
          return FooterMobileLayout();
        }else if(context.isTablet){
          return FooterTabletLayout();
        }else{
          return FooterDesktopLayout();
        }
      },
    );
  }
}