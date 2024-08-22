import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/nav_bar/nav_bar_widget/nav_bar_iteam.dart';
import 'package:flutter/material.dart';
 // Make sure to import your NavBarItem

class NavBarDarkMode extends StatefulWidget {
  @override
  _NavBarDarkModeState createState() => _NavBarDarkModeState();
}

class _NavBarDarkModeState extends State<NavBarDarkMode> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth < 600 ? double.infinity : 304,
          height: constraints.maxHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBarItem(
                title: 'Screens',
                icon: Icons.screen_share,
                isSelected: _selectedIndex == 0,
                onTap: () => _onItemTapped(0),
              ),
              NavBarItem(
                title: 'Media',
                icon: Icons.image,
                isSelected: _selectedIndex == 1,
                onTap: () => _onItemTapped(1),
              ),
              NavBarItem(
                title: 'Compose',
                icon: Icons.create,
                isSelected: _selectedIndex == 2,
                onTap: () => _onItemTapped(2),
              ),
              NavBarItem(
                title: 'Schedule',
                icon: Icons.calendar_today,
                isSelected: _selectedIndex == 3,
                onTap: () => _onItemTapped(3),
              ),
              NavBarItem(
                title: 'Apps',
                icon: Icons.apps,
                isSelected: _selectedIndex == 4,
                onTap: () => _onItemTapped(4),
              ),
              NavBarItem(
                title: 'Analytics',
                icon: Icons.analytics,
                isSelected: _selectedIndex == 5,
                onTap: () => _onItemTapped(5),
              ),
              NavBarItem(
                title: 'Settings',
                icon: Icons.settings,
                isSelected: _selectedIndex == 6,
                onTap: () => _onItemTapped(6),
              ),
              NavBarItem(
                title: 'Support',
                icon: Icons.help,
                isSelected: _selectedIndex == 7,
                onTap: () => _onItemTapped(7),
              ),
            ],
          ),
        );
      },
    );
  }
}
