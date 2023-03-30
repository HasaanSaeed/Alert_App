import 'dart:async';
import 'package:alertsapp/Screens/home_screen.dart';
import 'package:alertsapp/Screens/on_boarding.dart';
import 'package:alertsapp/Services/splash_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({Key? key}) : super(key: key);

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  SplashServices splashSreen = SplashServices();

  @override
  void initState() {
    super.initState();
    StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (c, userSnapshot) {
        if (userSnapshot.hasData) {
          return const HomeScreen();
        }
        return const OnBoarding();
      },
    );
    super.initState();
  }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   splashSreen.islogin(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: const [
                Image(
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/attention-attraction-important-announcement-warning-information-sharing-latest-news-loudspeaker-megaphone-bullhorn-with-exclamation-mark-vector-isolated-concept-metaphor-illustration_335657-2809.jpg?w=740&t=st=1678729778~exp=1678730378~hmac=f306f7239e053936fc2d3d4f52ce80ae3ad9112be646050f281d9a5e08928566'),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Get Your Desired Proposals ',
                  style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'Gabriola',
                      fontSize: 50),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
