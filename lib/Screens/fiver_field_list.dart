import 'package:alertsapp/Widgets/custome_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FiverFieldList extends StatefulWidget {
  const FiverFieldList({super.key});

  @override
  State<FiverFieldList> createState() => _FiverFieldListState();
}

class _FiverFieldListState extends State<FiverFieldList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Choose According to your Skills',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 40,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Field of Experties',
                  style: TextStyle(fontSize: 36),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomRow(
                  onPressed1: () {},
                  onPressed2: () {},
                  title1: 'Wordpress',
                  title2: 'Shoppify',
                  buttonColor: Colors.purple,
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                  onPressed1: () {},
                  onPressed2: () {},
                  title1: 'Web\nDevelopment',
                  title2: 'Application\nDevelopment',
                  buttonColor: Colors.purple,
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                    onPressed1: () {},
                    onPressed2: () {},
                    title1: 'Graphics\nDesigning',
                    title2: 'Video Editing',
                    buttonColor: Colors.purple),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                    onPressed1: () {},
                    onPressed2: () {},
                    title1: 'Wordpress',
                    title2: 'Shoppify',
                    buttonColor: Colors.purple),
                SizedBox(
                  height: 25.h,
                ),
                CustomRow(
                    onPressed1: () {},
                    onPressed2: () {},
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
