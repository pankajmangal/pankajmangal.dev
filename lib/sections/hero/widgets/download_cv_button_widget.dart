import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_outline_button.dart';

class DownloadCvButtonWidget extends StatelessWidget {
  const DownloadCvButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioOutlineButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            ImagePaths.download,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            width: 18,
            height: 18,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(width: Dimens.padding12),
          Text(
            Strings.downloadCV,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: Dimens.fontSize14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      onPressed: () => ScrollManager.scrollTo(ScrollManager.contactKey),
    );
  }
}
