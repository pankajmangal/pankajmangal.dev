import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_elevated_button.dart';

class ViewProjectsButtonWidget extends StatelessWidget {
  const ViewProjectsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioElevatedButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(Strings.viewProjects, style: TextStyle(color: AppColors.whiteColor,
              fontSize: Dimens.fontSize14)),
          SizedBox(width: Dimens.padding12,),
          SvgPicture.asset(ImagePaths.arrowForward,
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
            width: 18,
            height: 18,
            fit: BoxFit.scaleDown,)
        ],
      ),
      onPressed: () =>
          ScrollManager.scrollTo(ScrollManager.projectsKey),
    );
  }
}
