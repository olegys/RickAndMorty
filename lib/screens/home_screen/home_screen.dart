import 'package:flutter/material.dart';
import 'package:flutter_app/resources/data.dart';
import 'package:flutter_app/screens/character_profile_screen/character_profile_screen.dart';
import 'package:flutter_app/screens/home_screen/widgets/app_bar_widget.dart';
import 'package:flutter_app/screens/home_screen/widgets/grid_item.dart';
import 'package:flutter_app/screens/home_screen/widgets/list_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isList = true;

  void _changeView() {
    setState(() {
      _isList = !_isList;
    });
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
    return Scaffold(
      appBar: AppBarWidget(
        size: characters.length,
        isList: _isList,
        onTap: _changeView,
      ),
      body: _isList
          ? ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16.0),
              itemCount: characters.length,
              itemBuilder: (_, i) => ListItem(
                view: characters[i],
                onTap: () => _goToCharacterProfile(
                  context: context,
                  id: characters[i].id,
                ),
              ),
              separatorBuilder: (_, i) => const SizedBox(
                height: 24.0,
              ),
            )
          : GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
              ),
              itemCount: characters.length,
              itemBuilder: (_, i) {
                return GridItem(
                  view: characters[i],
                  onTap: () => _goToCharacterProfile(
                    context: context,
                    id: characters[i].id,
                  ),
                );
              },
            ),
    );
  }
}
