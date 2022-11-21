// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MidTile extends StatelessWidget {
  MidTile(
      {Key? key,
      required this.indexClicked,
      required this.foodIcon,
      required this.pressed,
      required this.index,
      required this.text})
      : super(key: key);

  final int indexClicked;
  final int index;
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  var pressed;
  final String foodIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
              color: indexClicked == index ? Colors.white : Colors.yellow),
          primary: indexClicked == index ? Colors.yellow : Colors.white,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: pressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Image(
                  image: AssetImage(foodIcon),
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.darken,
                )),
            const SizedBox(
              width: 3,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
