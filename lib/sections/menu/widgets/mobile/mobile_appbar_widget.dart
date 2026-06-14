import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class MobileAppbarWidget extends StatelessWidget {
  const MobileAppbarWidget({super.key, required this.controller});

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Padding(
        padding: const EdgeInsets.only(right: Dimens.padding12),
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
            controller.forward(from: 0);
          },
        ),
      ),
    );
  }
}
