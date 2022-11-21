// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learning/dafaults/defaults.dart';

// ignore: must_be_immutable
class MyProfile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var icon1;
  // ignore: prefer_typing_uninitialized_variables
  var text;
  bool arrowShown = true;
  MyProfile(
      {Key? key,
      @required this.icon1,
      @required this.text,
      required this.arrowShown})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 328,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(5.0, 5.0),
              spreadRadius: 1,
              blurRadius: 5),
          BoxShadow(
              color: Colors.white,
              blurRadius: 7,
              offset: Offset(-10.0, -5.0),
              spreadRadius: 3),
        ],
        color: Defaults.foodColor,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Icon(
                  icon1,
                  size: 29,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          arrowShown
              ? const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    size: 29,
                    color: Colors.black45,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
