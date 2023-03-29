import 'package:alertsapp/Screens/settings.dart';
import 'package:alertsapp/Widgets/custome_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Color> colors = [const Color(0xFFFB9245), const Color(0xFFF54E6B)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Weclome !',
          style: TextStyle(
              color: Colors.indigo, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(
              Icons.settings,
              color: Colors.indigo,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: const Icon(
              Icons.person,
              color: Colors.indigo,
              size: 25,
            ),
            onPressed: () {
              // do something when the icon is clicked
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.white10],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/successful-business-deal-employee-hiring-recruiting-service_335657-3073.jpg?w=900&t=st=1680127778~exp=1680128378~hmac=9a7bb55a78a3e13d8b3bc82d99c6db1b44ff25397e84f62a06e770a812e09438'),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'FreeLancing Platforms',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 40.h,
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
      ),
    );
  }
}
