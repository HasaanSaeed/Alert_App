import 'dart:io';
import 'package:alertsapp/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _imageFile;
  String countryCode = '';

  void _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard by unfocusing the TextField
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.black,
                        backgroundImage:
                            _imageFile != null ? FileImage(_imageFile!) : null,
                        child: _imageFile == null
                            ? const Icon(
                                Icons.person,
                                size: 80,
                              )
                            : null,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8.0,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              _pickImage();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: const TextStyle(
                      // color: Colors.black,
                      ),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Whatsapp Number'),
                const SizedBox(
                  height: 5,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: '',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onChanged: (phone) {
                    Fluttertoast.showToast(msg: 'Invalid Number');
                  },
                ),
                // Text(countryCode.toString()),
                // Center(
                //   child: TextButton(
                //     onPressed: () {
                //       showCountryPicker(
                //           context: context,
                //           showPhoneCode: true,
                //           countryListTheme: const CountryListThemeData(
                //               borderRadius: BorderRadius.only(
                //                   topLeft: Radius.circular(10)),
                //               inputDecoration: InputDecoration(
                //                 hintText: 'Start typing to sear',
                //                 labelText: 'Search ',
                //               )),
                //           favorite: ['PK'],
                //           onSelect: (Country value) {
                //             print(value.countryCode.toString());
                //             print(value.phoneCode.toString());

                //             countryCode = value.phoneCode.toString();
                //             setState(() {});
                //           });
                //     },
                //     child: const Text(
                //       'Tap',
                //       style: TextStyle(fontSize: 30, color: Colors.red),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  // keyboardAppearance: Brightness.light,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'years of experience',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  // keyboardAppearance: Brightness.light,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'years of experience',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  // keyboardAppearance: Brightness.light,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'years of experience',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(name: 'Save', onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
