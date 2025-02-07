import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex; // Track which tab is active

  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black.withOpacity(0.7),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex, // Set active tab index
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Clubs'),
        BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Compete'),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Macros'),
        BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Training'),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/clubs');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/challenges');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/macros');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/training');
            break;
        }
      },
    );
  }
}
