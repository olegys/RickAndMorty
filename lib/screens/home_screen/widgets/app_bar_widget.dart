import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen/widgets/info_widget.dart';
import 'package:flutter_app/screens/home_screen/widgets/search_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final int size;
  final bool isList;
  final GestureTapCallback? onTap;

  AppBarWidget({
    required this.size,
    required this.isList,
    this.onTap,
  });

  @override
  Size get preferredSize => Size.fromHeight(118.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 38.0,
          ),
          SearchWidget(),
          const SizedBox(
            height: 23.0,
          ),
          InfoWidget(
            title: 'ВСЕГО ПЕРСОНАЖЕЙ: $size',
            isList: isList,
            onTap: onTap,
          ),
          const SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
