import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen/models/view_model.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';

class GridItem extends StatelessWidget {
  final ViewModel view;
  final GestureTapCallback? onTap;

  GridItem({
    required this.view,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              view.avatar,
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          view.isAlive
              ? Text(
                  'ЖИВОЙ',
                  style: AppTextTheme.kTitleTextStyle.copyWith(
                    color: AppColorTheme.kGreenColor,
                    height: 1.6,
                  ),
                )
              : Text(
                  'МЕРТВЫЙ',
                  style: AppTextTheme.kTitleTextStyle.copyWith(
                    color: AppColorTheme.kRedColor,
                    height: 1.6,
                  ),
                ),
          Text(
            view.name,
            style: AppTextTheme.kBodyTextStyle.copyWith(
              color: AppColorTheme.kWhiteColor,
              height: 1.5,
            ),
          ),
          Text(
            '${view.kind}, ${view.gender}',
            style: AppTextTheme.kCaptionTextStyle.copyWith(
              color: AppColorTheme.kAdditionalColor,
              height: 1.33,
            ),
          ),
        ],
      ),
    );
  }
}
