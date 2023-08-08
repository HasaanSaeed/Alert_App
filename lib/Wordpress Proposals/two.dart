import 'package:alertsapp/Services/copytext.dart';

import 'package:alertsapp/Widgets/custome_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Wordpress3 extends StatefulWidget {
  const Wordpress3({super.key});

  @override
  State<Wordpress3> createState() => _Wordpress3State();
}

class _Wordpress3State extends State<Wordpress3> {
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
              
          I am writing to offer my services as a Wordpress3 developer for your website. I have recently completed a Wordpress3 development course and am excited to apply my skills to real-world projects.
          As a fresh Wordpress3 developer, I have experience in:
              
          * Developing custom Wordpress3 themes and plugins
          * Setting up and configuring Wordpress3 sites
          * Implementing Wordpress3 best practices for security and performance
          * Troubleshooting Wordpress3 issues and performing updates
          I have also worked with HTML, CSS, JavaScript, and PHP, which are essential skills for Wordpress3 development. I have experience with popular Wordpress3 page builders and theme frameworks, and I am familiar with version control systems such as Git and GitHub.
              
          I understand that you may be hesitant to work with a fresh Wordpress3 developer. However, I am committed to delivering high-quality work that meets your requirements and exceeds your expectations. I am eager to learn and grow as a Wordpress3 developer, and I am confident that my skills and work ethic will be an asset to your project.
              
          If you are interested in working with me, please reply to this email, and we can discuss your project requirements and how I can help you achieve your goals.
              
          Thank you for your consideration.
              
          Best regards,
              
          [Your Name]
          ''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.sp),
                key: _copyableTextKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
