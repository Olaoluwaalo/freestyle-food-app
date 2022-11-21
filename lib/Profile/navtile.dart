import 'package:flutter/material.dart';
import 'package:learning/dafaults/defaults.dart';

// ignore: must_be_immutable
class NavBarTile extends StatelessWidget {
  NavBarTile(
      {Key? key,
      required this.profileIndex,
      required this.index,
      required this.onTap})
      : super(key: key);

  final int profileIndex;
  // ignore: prefer_typing_uninitialized_variables
  var onTap;
  // ignore: prefer_typing_uninitialized_variables
  var index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: profileIndex == index,
      selectedColor: Defaults.selectedColor,
      onTap: onTap,
      selectedTileColor: Defaults.selectedColor,
      leading: Icon(
        Defaults.bottomNavItemIcon[index],
        color: profileIndex == index
            ? Defaults.bottomNavItemSelectedColor
            : Defaults.bottomNavItemColor,
      ),
      title: Text(
        Defaults.bottomNavItemText[index],
        style: TextStyle(
          color: profileIndex == index
              ? Defaults.bottomNavItemSelectedColor
              : Defaults.bottomNavItemColor,
        ),
      ),
    );
  }
}
