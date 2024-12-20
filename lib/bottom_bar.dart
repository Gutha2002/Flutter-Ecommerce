import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0xFF00C853), // Green for active tab
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
        ),
      ],
    );
  }
}
