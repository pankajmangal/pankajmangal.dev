import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_form.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_info.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/mobile/contact_header_mobile_widget.dart';

class ContactMobileLayout extends StatelessWidget {
  const ContactMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: context.horizontalPadding,
        vertical: context.sectionVerticalPadding,
      ),
      child: Column(
        children: [
          ContactHeaderMobileWidget(),
          SizedBox(height: 60),
          ContactInfo(),
          SizedBox(height: 40),
          ContactForm(),
        ],
      ),
    );
  }
}
