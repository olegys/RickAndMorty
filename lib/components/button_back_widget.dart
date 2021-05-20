import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_icons.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonBackWidget extends StatelessWidget {
  final GestureTapCallback? onTap;

  ButtonBackWidget({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) return onTap!();

        Navigator.pop(context);
      },
      child: Container(
        width: 48.0,
        height: 48.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColorTheme.kBackgroundColor,
        ),
        child: SvgPicture.asset(
          AppIcons.arrowBack,
          width: 14.0,
          color: AppColorTheme.kWhiteColor,
        ),
      ),
    );
  }
}
