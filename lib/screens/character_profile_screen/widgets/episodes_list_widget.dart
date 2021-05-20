import 'package:flutter/material.dart';
import 'package:flutter_app/resources/data.dart';
import 'package:flutter_app/screens/character_profile_screen/widgets/episode_widget.dart';

class EpisodesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: episodes.length,
      itemBuilder: (_, i) => EpisodeWidget(
        episode: episodes[i],
      ),
      separatorBuilder: (_, i) => const SizedBox(
        height: 24.0,
      ),
    );
  }
}
