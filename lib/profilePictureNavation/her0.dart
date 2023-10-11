import 'package:faf/profilePictureNavation/ProfilePicturePage.dart';
import 'package:flutter/material.dart';

class hero extends StatefulWidget {
  const hero({super.key});

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'profile_picture',
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePicturePage(),
            ),
          );
        },
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/me_circle.png'),
          radius: 100,
        ),
      ),
    );
  }
}
