import 'package:alertsapp/Widgets/custome_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpworkFieldList extends StatefulWidget {
  const UpworkFieldList({super.key});

  @override
  State<UpworkFieldList> createState() => _UpworkFieldListState();
}

class _UpworkFieldListState extends State<UpworkFieldList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose According to your Skills',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Field of Experties',
                  style: TextStyle(fontSize: 36.sp),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomRow(
                  title1: 'Wordpress',
                  title2: 'Shoppify',
                  buttonColor: Colors.purple,
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                  title1: 'Website\nDevelopment',
                  title2: 'Application\nDevelopment',
                  buttonColor: Colors.purple,
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                    title1: 'Graphics\nDesigning',
                    title2: 'Shoppify',
                    buttonColor: Colors.purple),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                    title1: 'Wordpress',
                    title2: 'Shoppify',
                    buttonColor: Colors.purple),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                    title1: 'Wordpress',
                    title2: 'Shoppify',
                    buttonColor: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
