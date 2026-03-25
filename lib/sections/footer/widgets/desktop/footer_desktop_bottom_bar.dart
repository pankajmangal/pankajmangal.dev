import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/scroll_to_top_button_widget.dart';

class FooterDesktopBottomBar extends StatelessWidget {
  const FooterDesktopBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Container(height: 1, color: Color(0xFF1F2A44)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                Strings.copyRightText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: Dimens.fontSize14,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            ScrollToTopButtonWidget(),
          ],
        ),
      ],
    );
  }
}
