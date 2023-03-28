// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String name;
  // ---- ? means, height can be null
  double? height;
  double? width;
  bool loading;
  final VoidCallback? onPressed;

  CustomButton({
    Key? key,
    required this.name,
    this.height,
    this.loading = false,
    this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        //----------------> ?? means if height is null then assign assign 50.h else apply user entered height
        height: height ?? 50.h,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple,
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
