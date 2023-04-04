import 'package:alertsapp/Authentication/sign_in.dart';
import 'package:alertsapp/Widgets/flutter_toast.dart';
import 'package:alertsapp/Widgets/my_rounded_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  FirebaseAuth auth = FirebaseAuth.instance;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyRoundedContainer(
              'Settings',
              Column(
                children: [
                  customListTile(
                    Icons.color_lens,
                    'Theme',
                    const Icon(Icons.arrow_drop_down),
                    () {},
                  ),
                  const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                  customListTile(
                    Icons.notifications_active,
                    'Notifications',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                  const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                  customListTile(
                    Icons.notification_add,
                    'Whatsapp Notifications',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                ],
              ),
            ),
            MyRoundedContainer(
              'Account',
              Column(
                children: [
                  customListTile(
                    Icons.logout,
                    'Sign out',
                    const Icon(Icons.arrow_forward_ios),
                    () {
                      auth.signOut().then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignIn()));
                      }).onError((error, stackTrace) {
                        FluttertoastMessage().toastMessage(error.toString());
                      });
                    },
                  ),
                  const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                  customListTile(
                    Icons.restart_alt,
                    'Restore Purchase',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                  const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                  customListTile(
                    Icons.cancel,
                    'Cancel Subscription',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                  customListTile(
                    Icons.person_off_sharp,
                    'Delete Account',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                ],
              ),
            ),
            MyRoundedContainer(
              'Link Accounts',
              Column(
                children: [
                  customListTile(
                    Icons.mail_outline_sharp,
                    'Google',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                ],
              ),
            ),
            MyRoundedContainer(
              'About',
              Column(
                children: [
                  customListTile(
                    Icons.share,
                    'Share App',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                  customListTile(
                    Icons.info_outline_rounded,
                    'App info',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                  customListTile(
                    Icons.edit_document,
                    'Licenses',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                  customListTile(
                    Icons.contact_page,
                    'Terms and conditions',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                  customListTile(
                    Icons.privacy_tip_outlined,
                    'Privacy Policy',
                    const Icon(Icons.arrow_forward_ios),
                    () {},
                  ),
                ],
              ),
            ),
          ],
        ),
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
          child: Icon(
            icon,
            color: Colors.purple,
          )),
      title: Text(title),
      trailing: trailing,
      onTap: ontap,
    );
  }
}
