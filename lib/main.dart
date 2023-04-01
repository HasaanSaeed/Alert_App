import 'package:alertsapp/Screens/settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          home: const SettingsPage(),
          // StreamBuilder(
          //   stream: FirebaseAuth.instance.authStateChanges(),
          //   builder: (c, userSnapshot) {
          //     if (userSnapshot.hasData) {
          //       return const HomeScreen();
          //     }
          //     return const OnBoarding();
          //   },
          // ),
        );
      },
    );
  }
}
