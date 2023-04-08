import 'package:alertsapp/Services/copytext.dart';
import 'package:alertsapp/Widgets/Custom_Button.dart';

import 'package:alertsapp/Widgets/custome_row.dart';
import 'package:alertsapp/Wordpress%20Proposals/2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Wordpress2 extends StatefulWidget {
  const Wordpress2({super.key});

  @override
  State<Wordpress2> createState() => _Wordpress2State();
}

class _Wordpress2State extends State<Wordpress2> {
  final GlobalKey<CopyableTextState> _copyableTextKey = GlobalKey();

  void _onCopyPressed() {
    final String text = _copyableTextKey.currentState!.getText();
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Copied to clipboard: $text')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              CustomRow(
                  title1: 'Copy',
                  title2: 'Edit',
                  buttonColor: Colors.purple,
                  onPressed1: () {
                    _onCopyPressed();
                  },
                  onPressed2: () {}),
              const SizedBox(
                height: 20,
              ),
              CopyableText(
                '''
          Dear [Client],
              
          I am writing to offer my services as a Wordpress2 developer for your website. I have recently completed a Wordpress2 development course and am excited to apply my skills to real-world projects.
          As a fresh Wordpress2 developer, I have experience in:
              
          * Developing custom Wordpress2 themes and plugins
          * Setting up and configuring Wordpress2 sites
          * Implementing Wordpress2 best practices for security and performance
          * Troubleshooting Wordpress2 issues and performing updates
          I have also worked with HTML, CSS, JavaScript, and PHP, which are essential skills for Wordpress2 development. I have experience with popular Wordpress2 page builders and theme frameworks, and I am familiar with version control systems such as Git and GitHub.
              
          I understand that you may be hesitant to work with a fresh Wordpress2 developer. However, I am committed to delivering high-quality work that meets your requirements and exceeds your expectations. I am eager to learn and grow as a Wordpress2 developer, and I am confident that my skills and work ethic will be an asset to your project.
              
          If you are interested in working with me, please reply to this email, and we can discuss your project requirements and how I can help you achieve your goals.
              
          Thank you for your consideration.
              
          Best regards,
              
          [Your Name]
          ''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.sp),
                key: _copyableTextKey,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  name: 'Next',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Wordpress3(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
