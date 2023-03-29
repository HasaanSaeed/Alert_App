import 'dart:async';

import 'package:alertsapp/Screens/on_boarding.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void islogin(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        ),
      ),
    );
  }
}
