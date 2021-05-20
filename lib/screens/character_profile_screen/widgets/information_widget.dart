import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_icons.dart';
import 'package:flutter_app/screens/home_screen/models/view_model.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationWidget extends StatelessWidget {
  final ViewModel view;

  InformationWidget({
    required this.view,
  });

  Text _buildTitleText(String title) {
    return Text(
      title,
      style: AppTextTheme.kCaptionTextStyle.copyWith(
        color: AppColorTheme.kTextColor,
        height: 1.33,
      ),
    );
  }

  Text _buildValueText(String text) {
    return Text(
      text,
      style: AppTextTheme.kDefaultTextStyle.copyWith(
        color: AppColorTheme.kWhiteColor,
        height: 1.43,
      ),
    );
  }

  Widget _buildInfoColumn({required String title, required String text}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTitleText(title),
          _buildValueText(text),
        ],
      ),
    );
  }

  Widget _buildInfoRow({required String title, required String text}) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTitleText(title),
              _buildValueText(text),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildInfoColumn(
              title: 'Пол',
              text: view.gender,
            ),
            _buildInfoColumn(
              title: 'Расса',
              text: view.kind,
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        _buildInfoRow(
          title: 'Место рождения',
          text: 'Земля C-137',
        ),
        const SizedBox(
          height: 24.0,
        ),
        _buildInfoRow(
          title: 'Местоположение',
          text: 'Земля (Измерение подменны)',
        ),
      ],
    );
  }
}
