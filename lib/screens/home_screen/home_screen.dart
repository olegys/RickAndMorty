import 'package:flutter/material.dart';
import 'package:flutter_app/screens/character_profile_screen/character_profile_screen.dart';
import 'package:flutter_app/screens/home_screen/widgets/app_bar_widget.dart';
import 'package:flutter_app/screens/home_screen/widgets/grid_item.dart';
import 'package:flutter_app/screens/home_screen/widgets/list_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/characters_bloc/characters_bloc.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  void _changeView(BuildContext context, bool value) {
    context.read<CharactersBloc>()
      ..add(
        CharactersEvent.selectedView(isGrid: value),
      );
  }

  void _goToCharacterProfile({required BuildContext context, required int id}) {
    Navigator.pushNamed(
      context,
      CharacterProfileScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (context) => CharactersBloc()
        ..add(
          CharactersEvent.initial(),
        ),
      child: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => CircularProgressIndicator(),
            orElse: () => SizedBox.shrink(),
            data: (_data) => Scaffold(
              appBar: AppBarWidget(
                size: _data.characterList.length,
                isList: _data.isGrid,
                onTap: () => _changeView(context, _data.isGrid),
              ),
              body: _data.isGrid
                  ? GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.85,
                      ),
                      itemCount: _data.characterList.length,
                      itemBuilder: (_, i) {
                        return GridItem(
                          view: _data.characterList[i],
                          onTap: () => _goToCharacterProfile(
                            context: context,
                            id: _data.characterList[i].id,
                          ),
                        );
                      },
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16.0),
                      itemCount: _data.characterList.length,
                      itemBuilder: (_, i) => ListItem(
                        view: _data.characterList[i],
                        onTap: () => _goToCharacterProfile(
                          context: context,
                          id: _data.characterList[i].id,
                        ),
                      ),
                      separatorBuilder: (_, i) => const SizedBox(
                        height: 24.0,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
