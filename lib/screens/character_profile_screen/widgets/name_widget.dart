import 'package:flutter/material.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';

class NameWidget extends StatelessWidget {
  final String name;
  final bool isAlive;

  NameWidget({
    required this.name,
    required this.isAlive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        Text(
          name,
          style: AppTextTheme.kMainTitleTextStyle.copyWith(
            color: AppColorTheme.kWhiteColor,
            height: 1.18,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        isAlive
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
        const SizedBox(
          height: 36.0,
        ),
        Text(
          'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.',
          style: AppTextTheme.kDescriptionTextStyle.copyWith(
            color: AppColorTheme.kWhiteColor,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
