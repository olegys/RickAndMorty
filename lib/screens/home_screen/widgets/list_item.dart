import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen/models/view_model.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';

class ListItem extends StatelessWidget {
  final ViewModel view;
  final GestureTapCallback? onTap;

  ListItem({
    required this.view,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              view.avatar,
              width: 74.0,
              height: 74.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 18.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
