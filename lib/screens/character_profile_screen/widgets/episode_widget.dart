import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_icons.dart';
import 'package:flutter_app/screens/character_profile_screen/models/episode_model.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EpisodeWidget extends StatelessWidget {
  final EpisodeModel episode;

  EpisodeWidget({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            episode.image,
            width: 74.0,
            height: 74.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                episode.series,
                style: AppTextTheme.kTitleTextStyle.copyWith(
                  color: AppColorTheme.kOverlineColor,
                  height: 1.6,
                ),
              ),
              Text(
                episode.name,
                style: AppTextTheme.kBodyTextStyle.copyWith(
                  color: AppColorTheme.kWhiteColor,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
              Text(
                episode.date,
                style: AppTextTheme.kDefaultTextStyle.copyWith(
                  color: AppColorTheme.kAdditionalColor,
                  height: 1.43,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: SvgPicture.asset(
            AppIcons.nextArrow,
            width: 8.0,
          ),
        ),
      ],
    );
  }
}
