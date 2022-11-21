import 'package:flutter/material.dart';

class Defaults {
  static const Color bottomNavItemColor = Colors.grey;
  static const Color bottomNavItemSelectedColor =
      Color.fromARGB(255, 175, 159, 18);
  static const Color selectedColor = Color.fromARGB(255, 217, 227, 235);
  static const Color foodColor = Color.fromARGB(255, 236, 234, 234);
  static final bottomNavItemText = [
    'User\'s Task',
    'Activity',
    'Discounts',
    'Profile',
    'Settings',
    'Security',
  ];

  static final bottomNavItemIcon = [
    Icons.calendar_month,
    Icons.local_activity,
    Icons.discount,
    Icons.person,
    Icons.settings,
    Icons.security,
  ];
}
