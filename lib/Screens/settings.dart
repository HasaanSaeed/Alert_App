import 'package:alertsapp/Widgets/mycolumn.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert App'),
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          MyRoundedContainer(
            'Settings',
            Column(
              children: [
                customListTile(
                  Icons.settings,
                  'Settings',
                  const Icon(Icons.settings),
                  () {},
                ),
                const Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                customListTile(
                  Icons.settings,
                  'Settings',
                  const Icon(Icons.settings),
                  () {},
                ),
                const Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                customListTile(
                  Icons.settings,
                  'Settings',
                  const Icon(Icons.settings),
                  () {},
                ),
              ],
            ),
          ),
       ],
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class customListTile extends StatelessWidget {
  IconData icon;
  String title;
  Widget trailing;
  void Function()? ontap;
  customListTile(
    this.icon,
    this.title,
    this.trailing,
    this.ontap, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: const Icon(Icons.settings)),
      title: Text(title),
      trailing: trailing,
    );
  }
}
