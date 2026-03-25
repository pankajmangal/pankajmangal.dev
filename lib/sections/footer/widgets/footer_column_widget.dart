import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/footer/model/footer_item_model.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_item_widget.dart';

class FooterColumnWidget extends StatelessWidget {
  const FooterColumnWidget({super.key, required this.title, required this.items});

  final String title;
  final List<FooterItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: Dimens.fontSize18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        ...items.map(
              (item) => Padding(
            padding: const EdgeInsets.only(bottom: Dimens.padding12),
            child: FooterItemWidget(item: item),
          ),
        ),
      ],
    );
  }
}
