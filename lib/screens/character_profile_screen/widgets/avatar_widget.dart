import 'package:flutter/material.dart';
import 'package:flutter_app/theme/color_theme.dart';

class AvatarWidget extends StatelessWidget {
  final String avatar;

  AvatarWidget({
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 130.0,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 8.0,
          color: AppColorTheme.kScaffoldColor,
        ),
      ),
      child: ClipOval(
        child: Image.network(
          avatar,
          width: 148.0,
          height: 148.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
