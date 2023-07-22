import 'package:flutter/material.dart';
import 'package:m3_navigationbar_practice/pages/home.dart';
import 'package:m3_navigationbar_practice/pages/search.dart';
import 'package:m3_navigationbar_practice/pages/setting.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => setState(() {
          selectedIndex = value;
        }),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home),
            label: 'Home',
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: const Icon(Icons.search),
            label: 'Search',
            selectedIcon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings),
            label: 'Setting',
            selectedIcon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ],
        animationDuration: const Duration(milliseconds: 500),
      ),
      appBar: AppBar(
        title: const Text('Navigation bar'),
      ),
      body: Center(
        child: IndexedStack(
          index: selectedIndex,
          children: const [
            Home(),
            Search(),
            Setting(),
          ],
        ),
      ),
    );
  }
}
