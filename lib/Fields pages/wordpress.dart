import 'package:flutter/material.dart';

class Wordpress extends StatelessWidget {
  const Wordpress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text(
            '''
  Dear [Client],

  I am writing to offer my services as a WordPress developer for your website. I have recently completed a WordPress development course and am excited to apply my skills to real-world projects.

  As a fresh WordPress developer, I have experience in:

  Developing custom WordPress themes and plugins
  Setting up and configuring WordPress sites
  Implementing WordPress best practices for security and performance
  Troubleshooting WordPress issues and performing updates
  I have also worked with HTML, CSS, JavaScript, and PHP, which are essential skills for WordPress development. I have experience with popular WordPress page builders and theme frameworks, and I am familiar with version control systems such as Git and GitHub.

  I understand that you may be hesitant to work with a fresh WordPress developer. However, I am committed to delivering high-quality work that meets your requirements and exceeds your expectations. I am eager to learn and grow as a WordPress developer, and I am confident that my skills and work ethic will be an asset to your project.

  If you are interested in working with me, please reply to this email, and we can discuss your project requirements and how I can help you achieve your goals.

  Thank you for your consideration.

  Best regards,

  [Your Name]
  ''',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
