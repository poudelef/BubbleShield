import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Voice Permissions'),
                subtitle: Text('Manage voice-related settings'),
                leading: Icon(Icons.mic),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Handle the voice permissions settings here
                },
              ),
              ListTile(
                title: Text('Accounts'),
                subtitle: Text('Manage your accounts'),
                leading: Icon(Icons.account_circle),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Handle the accounts settings here
                },
              ),
              ListTile(
                title: Text('Language'),
                subtitle: Text('Choose your language'),
                leading: Icon(Icons.language),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                title: Text('Contact us'),
                subtitle: Text('Need techinical help?'),
                leading: Icon(Icons.info_outline),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              // Add more settings options as needed
            ],
          ),
        ),
      ),
    );
  }
}
