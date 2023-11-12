import 'package:faf/screens/DrawerScreen.dart';
import 'package:faf/screens/signinuserScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateuserScreen extends StatefulWidget {
  @override
  _CreateuserScreenState createState() => _CreateuserScreenState();
}

class _CreateuserScreenState extends State<CreateuserScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _createUserWithEmailAndPassword() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // User created successfully, navigate to the next screen or perform other actions.
      print('User created successfully! UID: ${userCredential.user?.uid}');

      // Navigate to the next screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DrawerScreen()), // Change NextScreen to the actual next screen
      );
    } catch (e) {
      // Handle errors, such as displaying an error message to the user.
      print('Error creating user: $e');
      _showErrorAlert(context, 'Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bubble.jpg'), // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Text(
              'Crete your Account',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 3.0,
                      color: Colors.blue,
                    ),
                  ],
                  letterSpacing: 2.5),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: _createUserWithEmailAndPassword,
                child: Text(
                  'Create User',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                },
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('Welcome to the next screen!'),
      ),
    );
  }
}

void _showErrorAlert(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      Future.delayed(Duration(seconds: 5), () {
        Navigator.of(context).pop(true); // Close the alert after 5 seconds
      });

      return AlertDialog(
        title: Text('Error'),
        content: Text(errorMessage),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the alert manually
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
