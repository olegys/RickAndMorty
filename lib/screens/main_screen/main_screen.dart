import 'package:flutter/material.dart';
import 'package:flutter_app/components/bottom_navigation_bar_widget.dart';
import 'package:flutter_app/screens/home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/main';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  int _currentIndex = 0;

  void _onSelect(int index) {
    if (_currentIndex != index)
      setState(() {
        _currentIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onSelect: (int index) => _onSelect(index),
      ),
    );
  }
}
