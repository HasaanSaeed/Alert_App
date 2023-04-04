import 'package:alertsapp/Screens/fiver_field_list.dart';
import 'package:alertsapp/Screens/profile_page.dart';
import 'package:alertsapp/Screens/settings.dart';
import 'package:alertsapp/Screens/upwork_field_list%20.dart';
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.summarize),
            label: 'Job',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'Proposals',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation when a tab is tapped.
        },
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueAccent,
              Colors.white70,
              Colors.indigoAccent,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Do something when the first widget is tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FiverFieldList(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.lightBlueAccent,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                size: 36,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'Fiver',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Do something when the first widget is tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UpworkFieldList(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.lightBlueAccent,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                size: 36,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'UpWork',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
