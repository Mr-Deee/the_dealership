
import 'package:flutter/material.dart';
import 'package:the_dealership/Pages/fleet.dart';
import 'package:the_dealership/Pages/homepage.dart';
import 'package:unicons/unicons.dart';

import 'bottom_nav_item.dart';

Widget buildBottomNavBar(int currIndex, Size size, bool isDarkMode) {
  return BottomNavigationBar(
    iconSize: size.width * 0.07,
    elevation: 0,
    selectedLabelStyle: const TextStyle(fontSize: 0),
    unselectedLabelStyle: const TextStyle(fontSize: 0),
    currentIndex: currIndex,
    backgroundColor: const Color(0x00ffffff),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: isDarkMode ? Colors.indigoAccent : Colors.black,
    unselectedItemColor: Colors.black,
    onTap: (value) {
      if (value != currIndex) {
        if (value == 1) { homepage();
        }
      }
    },
    items: [
      buildBottomNavItem(
        UniconsLine.bell,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.map_marker,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.user,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.apps,
        isDarkMode,
        size,
      ),
    ],
  );
}
