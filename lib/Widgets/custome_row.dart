// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:alertsapp/Screens/fiver_field_list.dart';
import 'package:alertsapp/Screens/upwork_field_list%20.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title1;
  final String title2;
  final Color buttonColor;
  // final VoidCallback onPressed1;
  // final VoidCallback onPressed2;

  CustomRow({
    super.key,
    required this.title1,
    required this.title2,
    required this.buttonColor,
    // required this.onPressed1,
    // required this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(150, 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: buttonColor),
              ),
            ),
          ),
          // onPressed: onPressed1,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FiverFieldList(),
              ),
            );
          },
          child: Text(
            title1,
            overflow: TextOverflow.visible,
            style: TextStyle(fontSize: 22, color: buttonColor),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(150, 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: buttonColor),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UpworkFieldList(),
              ),
            );
          },
          child: Text(
            title2,
            overflow: TextOverflow.visible,
            style: TextStyle(fontSize: 22, color: buttonColor),
          ),
        ),
      ],
    );
  }
}
