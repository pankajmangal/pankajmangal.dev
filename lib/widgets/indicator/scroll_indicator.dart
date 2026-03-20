import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';

class ScrollIndicator extends StatefulWidget {
  final VoidCallback onTap;

  const ScrollIndicator({super.key, required this.onTap});

  @override
  State<ScrollIndicator> createState() => _ScrollIndicatorState();
}

class _ScrollIndicatorState extends State<ScrollIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1))
      ..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),

      child: GestureDetector(
        onTap: widget.onTap,

        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            return Transform.translate(
              offset: Offset(0, 12 * _controller.value),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.all(Dimens.padding10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isHovered
                      ? AppColors.primary.withValues(alpha: 0.1)
                      : AppColors.transparent,
                ),
                child:
                SvgPicture.asset(
                  ImagePaths.downArrow,
                  width: 32,
                  height: 32,
                  colorFilter: ColorFilter.mode(isHovered
                      ? AppColors.primary
                      : AppColors.greyColor500, BlendMode.srcIn),
                )
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}