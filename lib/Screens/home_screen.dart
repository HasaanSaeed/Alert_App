import 'package:alertsapp/Widgets/custome_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  'Weclome !!!',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 40,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 50.h,
                ),
                const Text(
                  'Categories',
                  style: TextStyle(fontSize: 36),
                ),
                SizedBox(
                  height: 100.h,
                ),
                CustomRow(
                  title1: 'Fiver',
                  title2: 'Upwork',
                  buttonColor: Colors.purple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
