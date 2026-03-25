import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/footer/model/footer_item_model.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_column_widget.dart';

class FooterExpertiseWidget extends StatelessWidget {
  const FooterExpertiseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FooterColumnWidget(
      title: 'Expertise',
      items: [
        FooterItem(label: 'Flutter Development'),
        FooterItem(label: 'React Native'),
        FooterItem(label: 'Mobile Architecture'),
        FooterItem(label: 'Clean Architecture'),
        FooterItem(label: 'API Integration'),
      ],
    );
  }
}