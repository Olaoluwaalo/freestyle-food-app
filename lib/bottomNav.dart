// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learning/dafaults/defaults.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var tap;
  // ignore: prefer_typing_uninitialized_variables
  var index;
  BottomNavigation({Key? key, @required this.tap, @required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 80,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.yellow,
        currentIndex: index,
        onTap: tap,
        backgroundColor: Defaults.foodColor,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: ''),
        ]);
  }
}
