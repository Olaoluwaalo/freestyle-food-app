// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:learning/dafaults/defaults.dart';

// ignore: must_be_immutable
class FoodTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var image;
  // ignore: prefer_typing_uninitialized_variables
  var foodName;
  // ignore: prefer_typing_uninitialized_variables
  var foodSubName;
  // ignore: prefer_typing_uninitialized_variables
  var calories;
  // ignore: prefer_typing_uninitialized_variables
  var amount;

  FoodTile(
      {Key? key,
      @required this.image,
      @required this.foodName,
      @required this.foodSubName,
      @required this.calories,
      @required this.amount})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(5.0, 5.0),
              spreadRadius: 3,
              blurRadius: 10),
          BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(-5.0, -5.0),
              spreadRadius: 3),
        ], borderRadius: BorderRadius.circular(12), color: Defaults.foodColor),
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Text(
              foodName,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
            Text(
              foodSubName,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text(
              calories,
              style: const TextStyle(color: Colors.red, fontSize: 15),
            ),
            Text(
              amount,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
