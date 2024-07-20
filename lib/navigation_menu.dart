import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:interactive/pages/HomePage.dart';
import 'package:interactive/pages/explore.dart';
import 'package:interactive/pages/profile_page.dart';
import 'package:interactive/pages/settings.dart';


class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(), // Replace with your actual home screen widget
    ExplorePage(), // Replace with your actual explore screen widget
    ProfilePage(), // Replace with your actual user screen widget
    SettingsPage(), // Replace with your actual settings screen widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.book), label: 'Explore'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Me'),
          NavigationDestination(icon: Icon(Iconsax.setting), label: 'Settings'),
        ],
      ),
    );
  }
}