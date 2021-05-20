import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_icons.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 19.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: AppColorTheme.kBackgroundColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.search,
            width: 24.0,
            color: AppColorTheme.kTextColor,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: TextField(
              style: AppTextTheme.kBodyTextStyle.copyWith(
                color: AppColorTheme.kTextColor,
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Найти персонажа',
                hintStyle: AppTextTheme.kBodyTextStyle.copyWith(
                  color: AppColorTheme.kTextColor,
                ),
              ),
            ),
          ),
          Container(
            width: 1.0,
            height: 24.0,
            color: AppColorTheme.kWhiteColor.withOpacity(0.1),
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
          ),
          SvgPicture.asset(
            AppIcons.filter,
            width: 24.0,
            color: AppColorTheme.kTextColor,
          ),
        ],
      ),
    );
  }
}
