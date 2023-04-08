import 'package:alertsapp/Authentication/sign_up.dart';
import 'package:alertsapp/Screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

// ignore: camel_case_types
class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //--------------------------------Email
    final emailFeild = TextFormField(
      autofocus: false,
      controller: emailcontroller,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Email");
        }
        String pattern = r'\w+@\w+\.\w+';
        if (!RegExp(pattern).hasMatch(value)) {
          return 'Invalid Email format';
        }
        return null;
      },
      onSaved: (value) {
        emailcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //------------------------------Password
    final passwordFeild = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordcontroller,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Please Enter Password");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter Valid Password(Min 6 character)");
        }
        return null;
      },
      onSaved: (value) {
        passwordcontroller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //--------------------------------Button
    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purple,
      child: MaterialButton(
        splashColor: const Color.fromARGB(255, 121, 30, 30),
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signIn(emailcontroller.text, passwordcontroller.text);
        },
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard by unfocusing the TextField
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/Proposal.jpg",
                          width: 220,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      emailFeild,
                      const SizedBox(
                        height: 25,
                      ),
                      passwordFeild,
                      const SizedBox(
                        height: 30,
                      ),
                      loginbutton,
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have an account?'),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const SignUp(),
                                ),
                              );
                            },
                            child: const Text(
                              " Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.purple,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then(
            (uid) => {
              Fluttertoast.showToast(msg: "Login Successful"),
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
            },
          )
          .catchError(
        // ignore: body_might_complete_normally_catch_error
        (e) {
          Fluttertoast.showToast(msg: e!.message);
        },
      );
    }
  }
}




// import 'package:alertsapp/Authentication/sign_up.dart';
// import 'package:alertsapp/Screens/home_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class SignIn extends StatefulWidget {
//   const SignIn({Key? key}) : super(key: key);

//   @override
//   State<SignIn> createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController emailcontroller = TextEditingController();
//   final TextEditingController passwordcontroller = TextEditingController();
//   final _auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     //--------------------------------Email
//     final emailFeild = TextFormField(
//       autofocus: false,
//       controller: emailcontroller,
//       keyboardType: TextInputType.emailAddress,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please Enter Email");
//         }
//         String pattern = r'\w+@\w+\.\w+';
//         if (!RegExp(pattern).hasMatch(value)) {
//           return 'Invalid Email format';
//         }
//         return null;
//       },
//       onSaved: (value) {
//         emailcontroller.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//           prefixIcon: const Icon(Icons.mail),
//           contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//           hintText: "Email",
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),
//     );
//     //------------------------------Password
//     final passwordFeild = TextFormField(
//       autofocus: false,
//       obscureText: true,
//       controller: passwordcontroller,
//       validator: (value) {
//         RegExp regex = RegExp(r'^.{6,}$');
//         if (value!.isEmpty) {
//           return ("Please Enter Password");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please Enter Valid Password(Min 6 character)");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         passwordcontroller.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         // focusColor: Colors.red,
//         prefixIcon: const Icon(Icons.vpn_key),
//         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//     //--------------------------------Button
//     final loginbutton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(30),
//       color: Colors.purple,
//       child: MaterialButton(
//         splashColor: const Color.fromARGB(255, 121, 30, 30),
//         padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         minWidth: MediaQuery.of(context).size.width,
//         onPressed: () {
//           // signIn(emailcontroller.text, passwordcontroller.text);
//         },
//         child: const Text(
//           "Login",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 22,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//     return GestureDetector(
//       onTap: () {
//         // Dismiss the keyboard by unfocusing the TextField
//         FocusScope.of(context).unfocus();
//       },
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Container(
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       SizedBox(
//                           height: 200,
//                           child: Image.asset(
//                             "assets/Proposal.jpg",
//                             width: 220,
//                           )),
//                       const SizedBox(
//                         height: 25,
//                       ),
//                       emailFeild,
//                       const SizedBox(
//                         height: 25,
//                       ),
//                       passwordFeild,
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       loginbutton,
//                       const SizedBox(
//                         height: 12,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text('Don\'t have an account?'),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (_) => const SignUp(),
//                                 ),
//                               );
//                             },
//                             child: const Text(
//                               " Sign up",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.indigo,
//                                   fontSize: 15),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void signIn(String email, String password) async {
//     if (_formKey.currentState!.validate()) {
//       _auth
//           .signInWithEmailAndPassword(email: email, password: password)
//           .then((uid) => {
//                 Fluttertoast.showToast(msg: "Login Successful"),
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => const HomeScreen(),
//                   ),
//                 ),
//               })
//           .catchError(
//         (e) {
//           Fluttertoast.showToast(msg: "Login Successful");
//           Fluttertoast.showToast(msg: e!.message);
//         },
//       );
//     }
//   }
// }