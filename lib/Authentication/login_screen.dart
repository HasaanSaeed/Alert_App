import 'package:flutter/material.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(children: const [
        Image(image: NetworkImage('url'))
      ],) ,
    );
  }
}