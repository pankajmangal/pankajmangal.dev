import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_form.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/contact_info.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/widgets/desktop/contact_header_desktop_widget.dart';

class ContactTabletLayout extends StatelessWidget {
  const ContactTabletLayout({super.key});

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
          ContactHeaderDesktopWidget(),
          const SizedBox(height: 60),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: ContactInfo()),
              SizedBox(width: 30),
              Expanded(child: ContactForm()),
            ],
          ),
        ],
      ),
    );
  }
}
