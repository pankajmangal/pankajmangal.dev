import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/footer/model/footer_item_model.dart';

class FooterItemWidget extends StatefulWidget {
  final FooterItem item;

  const FooterItemWidget({super.key, required this.item});

  @override
  State<FooterItemWidget> createState() => _FooterItemWidgetState();
}

class _FooterItemWidgetState extends State<FooterItemWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final clickable = widget.item.onTap != null;

    return MouseRegion(
      cursor:
      clickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.item.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            color: clickable
                ? (isHover ? AppColors.primary : Colors.white70)
                : Colors.white60,
            fontSize: Dimens.fontSize14,
            fontWeight: isHover ? FontWeight.w500 : FontWeight.normal,
          ),
          child: Text(widget.item.label),
        ),
      ),
    );
  }
}