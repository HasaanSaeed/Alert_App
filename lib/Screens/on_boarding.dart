import 'package:alertsapp/Authentication/sign_in.dart';
import 'package:alertsapp/Widgets/custom_button.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  // final _auth = FirebaseAuth.instance;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard by unfocusing the TextField
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/welcome-word-flat-cartoon-people-characters_81522-4207.jpg?w=826&t=st=1678787998~exp=1678788598~hmac=02cc542101122cdaef785d81d8b9c10f9746cdfb07a25b13461cdbce195c095c'),
                    ),
                    Text(
                      'Welcome to  Alerts ',
                      style: TextStyle(
                          color: Colors.purple,
                          fontFamily: 'Gabriola',
                          fontSize: 30),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                const BulletedList(
                  listItems: [
                    ListTile(
                      title: Text('Proposal Writer'),
                      subtitle: Text(
                          'Get personalized cover letters and proposals according to your skills.'),
                    ),
                  ],
                  bullet: Icon(
                    Icons.check_circle_outlined,
                    color: Colors.purple,
                  ),
                ),
                const BulletedList(
                  listItems: [
                    ListTile(
                      title: Text('Categorical Approach'),
                      subtitle: Text(
                          'Get your skill matched proposal easily by choosing the category.'),
                    ),
                  ],
                  bullet: Icon(
                    Icons.check_circle_outlined,
                    color: Colors.purple,
                  ),
                ),
                const BulletedList(
                  listItems: [
                    ListTile(
                      title: Text('Keyword Searcher'),
                      subtitle: Text(
                          'Use Search box to search your skill related proposal and cover letter.'),
                    ),
                  ],
                  bullet: Icon(
                    Icons.check_circle_outlined,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomButton(
                  width: 330.w,
                  onPressed: () {
                    setState(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ),
                        );
                      },
                    );
                  },
                  name: 'Lets\u0027s Start',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
