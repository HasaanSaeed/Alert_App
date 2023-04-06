import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title1;
  final String title2;
  final Color buttonColor;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  const CustomRow({
    super.key,
    required this.title1,
    required this.title2,
    required this.buttonColor,
    required this.onPressed1,
    required this.onPressed2,
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
          onPressed: onPressed1,
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
          onPressed: onPressed2,
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
