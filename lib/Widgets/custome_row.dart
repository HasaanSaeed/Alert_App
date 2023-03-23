// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title1;
  final String title2;
  final Color buttonColor;

  CustomRow({
    super.key,
    required this.title1,
    required this.title2,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(100, 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: buttonColor),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            title1,
            style: TextStyle(fontSize: 22, color: buttonColor),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(100, 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: buttonColor),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            overflow: TextOverflow.clip,
            title2,
            style: TextStyle(fontSize: 22, color: buttonColor),
          ),
        ),
      ],
    );
  }
}
