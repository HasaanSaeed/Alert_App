import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _imageFile;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
            const TextField(),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         automaticallyImplyLeading: true,
//         foregroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const SizedBox(
//               height: 50,
//             ),
//             const Text(
//               'Profile',
//               style: TextStyle(fontSize: 30),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Center(
//               child: Stack(
//                 children: [
//                   CircleAvatar(
//                     radius: 60.0,
//                     backgroundColor: Colors.grey[300],
//                     child: const Icon(
//                       Icons.person,
//                       size: 80,
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 8.0,
//                             offset: Offset(0, 3),
//                           ),
//                         ],
//                       ),
//                       child: IconButton(
//                         icon: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.black,
//                         ),
//                         onPressed: () {
//                           // Handle the action to update the profile picture
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         automaticallyImplyLeading: true,
//         foregroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const SizedBox(
//               height: 50,
//             ),
//             const Text(
//               'Profile',
//               style: TextStyle(fontSize: 30),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               // color: Colors.grey[200],
//               child: Column(
//                 children: const [
//                   CircleAvatar(
//                     radius: 60.0,
//                     backgroundImage: NetworkImage('https://picsum.photos/200'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
