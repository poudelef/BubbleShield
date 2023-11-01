import 'package:faf/About_BubbleSheld/About.dart';
import 'package:faf/Body/Central_Part.dart';
import 'package:faf/Map/Map.dart';
import 'package:faf/Personal_information/Profile.dart';
import 'package:faf/Setting/setting.dart';
import 'package:faf/Picture_navigation/Profile_her0.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bubble_Shield',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          backgroundColor: Colors.blue[700],
        ),
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
                        builder: (context) => setting(),
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
              ],
            ),
          ),
        ),
        body: Container(child: Central_part()));
  }
}
