import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/theme/color_theme.dart';

class BackdropWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 4.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColorTheme.kScaffoldColor.withOpacity(0.65),
          ),
        ),
      ),
    );
  }
}
