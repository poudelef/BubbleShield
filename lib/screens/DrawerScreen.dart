import 'package:faf/screens/AboutScreen.dart';
import 'package:faf/screens/Central_PartScreen.dart';
import 'package:faf/screens/Screen.dart';
import 'package:faf/screens/ProfileScreen.dart';
import 'package:faf/Picture_navigation/Profile_her0.dart';
import 'package:faf/Setting/setting.dart';
import 'package:faf/screens/signinuserScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signOut() async {
    try {
      await _auth.signOut();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInScreen(),
        ),
      );
      // Successful sign-out, navigate to the login or home screen.
      print('User signed out successfully!');
    } catch (e) {
      // Handle errors, such as displaying an error message to the user.
      print('Error signing out: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text(
                "Bubble Shield",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            backgroundColor: Colors.pink[100]),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text('Sambhav Poudel'),
                  accountEmail: Text('poudelsb@mail.uc.edu'),
                  arrowColor: Color.fromRGBO(32, 16, 10, 0.965),
                  currentAccountPicture: CircleAvatar(child: hero()),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Your Information'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.map),
                  title: const Text('Current Location'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Location(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Setting'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text('About'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => About(),
                      ),
                    );
                  },
                ),
                ListTile(
                    leading: const Icon(Icons.logout_rounded),
                    title: const Text('Sign out'),
                    onTap: _signOut),
              ],
            ),
          ),
        ),
        body: Container(child: Central_part()));
  }
}
