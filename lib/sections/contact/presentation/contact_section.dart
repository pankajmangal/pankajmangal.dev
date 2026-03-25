import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/desktop/contact_desktop_layout.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/mobile/contact_mobile_layout.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/tablet/contact_tablet_layout.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: ScrollManager.contactKey,
      builder: (context, constraints) {
        if (context.isMobile) {
          return ContactMobileLayout();
        }else if(context.isTablet){
          return ContactTabletLayout();
        }else{
          return ContactDesktopLayout();
        }
      },
    );
  }
}