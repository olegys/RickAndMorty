import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_icons.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final bool isList;
  final GestureTapCallback? onTap;

  InfoWidget({
    required this.title,
    required this.isList,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextTheme.kTitleTextStyle.copyWith(
            color: AppColorTheme.kTextColor,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
            ),
            child: SvgPicture.asset(
              isList ? AppIcons.gridView : AppIcons.listView,
              width: 24.0,
              color: AppColorTheme.kTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
