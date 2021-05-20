import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/components/button_back_widget.dart';
import 'package:flutter_app/resources/data.dart';
import 'package:flutter_app/screens/character_profile_screen/widgets/avatar_widget.dart';
import 'package:flutter_app/screens/character_profile_screen/widgets/backdrop_widget.dart';
import 'package:flutter_app/screens/character_profile_screen/widgets/episodes_list_widget.dart';
import 'package:flutter_app/screens/character_profile_screen/widgets/episodes_title_widget.dart';
import 'package:flutter_app/screens/character_profile_screen/widgets/information_widget.dart';
import 'package:flutter_app/screens/character_profile_screen/widgets/name_widget.dart';
import 'package:flutter_app/screens/home_screen/models/view_model.dart';
import 'package:flutter_app/theme/color_theme.dart';

class CharacterProfileScreen extends StatelessWidget {
  static const routeName = '/character_profile';

  @override
  Widget build(BuildContext context) {
    final int _characterId = ModalRoute.of(context)!.settings.arguments as int;
    final ViewModel _character =
        characters.firstWhere((e) => e.id == _characterId);

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          _character.avatar,
                          width: double.infinity,
                          height: 218.0,
                          fit: BoxFit.cover,
                        ),
                        Positioned.fill(
                          child: BackdropWidget(),
                        ),
                      ],
                    ),
                    AvatarWidget(
                      avatar: _character.avatar,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Column(
                    children: [
                      NameWidget(
                        name: _character.name,
                        isAlive: _character.isAlive,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      InformationWidget(
                        view: _character,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 72.0,
                  thickness: 2.0,
                  color: AppColorTheme.kBackgroundColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Column(
                    children: [
                      EpisodesTitleWidget(),
                      const SizedBox(
                        height: 24.0,
                      ),
                      EpisodesListWidget(),
                      const SizedBox(
                        height: 24.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 54.0,
              left: 16.0,
            ),
            child: ButtonBackWidget(),
          ),
        ],
      ),
    );
  }
}
