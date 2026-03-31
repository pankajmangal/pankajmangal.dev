import 'package:flutter/material.dart';

class MobileAppbarWidget extends StatelessWidget {
  const MobileAppbarWidget({super.key, required this.controller});

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
          controller.forward(from: 0);
        },
      ),
    );
  }
}
