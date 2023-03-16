import 'package:alertsapp/Services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({Key? key}) : super(key: key);

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  List<Color> colors = [const Color(0xFFFB9245), const Color(0xFFF54E6B)];
  SplashServices splashSreen = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashSreen.islogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Image(
        height: double.infinity,
        fit: BoxFit.contain,
        image: NetworkImage(
            'https://img.freepik.com/free-vector/attention-attraction-important-announcement-warning-information-sharing-latest-news-loudspeaker-megaphone-bullhorn-with-exclamation-mark-vector-isolated-concept-metaphor-illustration_335657-2809.jpg?w=740&t=st=1678729778~exp=1678730378~hmac=f306f7239e053936fc2d3d4f52ce80ae3ad9112be646050f281d9a5e08928566'),
      ),
    );
  }
}
