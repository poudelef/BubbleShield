import 'package:flutter/material.dart';

class ProfilePicturePage extends StatefulWidget {
  const ProfilePicturePage({super.key});

  @override
  State<ProfilePicturePage> createState() => _ProfilePicturePageState();
}

class _ProfilePicturePageState extends State<ProfilePicturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 211, 215),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Hero(
            tag: 'profile_picture',
            child: Padding(
              padding: const EdgeInsets.all(20.30),
              child: Center(child: Image.asset('assets/images/me_circle.png')),
            ),
          ),
        ),
      ),
    );
  }
}
