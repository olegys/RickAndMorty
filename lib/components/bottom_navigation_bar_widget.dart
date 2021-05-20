import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_icons.dart';
import 'package:flutter_app/screens/main_screen/models/bottom_navigation_model.dart';
import 'package:flutter_app/theme/color_theme.dart';
import 'package:flutter_app/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onSelect;

  BottomNavigationBarWidget({
    required this.currentIndex,
    required this.onSelect,
  });

  final List<BottomNavigationModel> _items = [
    BottomNavigationModel(
      icon: AppIcons.subtract,
      title: 'Персонажи',
    ),
    BottomNavigationModel(
      icon: AppIcons.location,
      title: 'Локациии',
    ),
    BottomNavigationModel(
      icon: AppIcons.episode,
      title: 'Эпизоды',
    ),
    BottomNavigationModel(
      icon: AppIcons.settings,
      title: 'Настройки',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: AppColorTheme.kBackgroundColor,
        ),
        child: Row(
          children: _items.map((i) {
            final int _index = _items.indexOf(i);

            return Expanded(
              child: GestureDetector(
                onTap: () => onSelect(_index),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      i.icon,
                      color: _index == currentIndex
                          ? AppColorTheme.kGreenColor
                          : AppColorTheme.kTextColor,
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      i.title,
                      style: AppTextTheme.kCaptionTextStyle.copyWith(
                        color: _index == currentIndex
                            ? AppColorTheme.kGreenColor
                            : AppColorTheme.kTextColor,
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
