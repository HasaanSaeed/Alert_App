import 'package:alertsapp/Widgets/custome_row.dart';
import 'package:flutter/material.dart';

class FiledList extends StatefulWidget {
  const FiledList({super.key});

  @override
  State<FiledList> createState() => _FiledListState();
}

class _FiledListState extends State<FiledList> {
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
                  title1: 'Wordpress',
                  title2: 'Shoppify',
                  buttonColor: Colors.purple,
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomRow(
                  title1: 'Web\nDevelopment',
                  title2: 'Application\nDevelopment',
                  buttonColor: Colors.purple,
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomRow(
                    title1: 'Graphics Design',
                    title2: 'Shoppify',
                    buttonColor: Colors.purple),
                const SizedBox(
                  height: 25,
                ),
                CustomRow(
                    title1: 'Wordpress',
                    title2: 'Shoppify',
                    buttonColor: Colors.purple),
                const SizedBox(
                  height: 25,
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
