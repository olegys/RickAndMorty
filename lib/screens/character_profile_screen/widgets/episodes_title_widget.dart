import 'package:flutter/material.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';

class EpisodesTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Эпизоды',
          style: AppTextTheme.kHeadline6TextStyle.copyWith(
            color: AppColorTheme.kWhiteColor,
          ),
        ),
        Text(
          'Все эпизоды',
          style: AppTextTheme.kCaptionTextStyle.copyWith(
            color: AppColorTheme.kTextColor,
          ),
        ),
      ],
    );
  }
}
