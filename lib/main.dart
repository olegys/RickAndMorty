import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/character_profile_screen/character_profile_screen.dart';
import 'package:flutter_app/screens/main_screen/main_screen.dart';
import 'package:flutter_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter_app/theme/color_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: AppColorTheme.kScaffoldColor,
      ),
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case SplashScreen.routeName:
            return MaterialPageRoute(
              builder: (_) => SplashScreen(),
              settings: settings,
            );
          case MainScreen.routeName:
            return MaterialPageRoute(
              builder: (_) => MainScreen(),
              settings: settings,
            );
          case CharacterProfileScreen.routeName:
            return CupertinoPageRoute(
              builder: (_) => CharacterProfileScreen(),
              settings: settings,
            );
        }
      },
    );
  }
}
