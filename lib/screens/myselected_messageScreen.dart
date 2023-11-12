import 'package:faf/provider/message_Screen_Provider.dart';
import 'package:faf/screens/DrawerScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class myselectedScreen extends StatefulWidget {
  final List<String> selectedItems;

  myselectedScreen({required this.selectedItems});

  @override
  State<myselectedScreen> createState() => _myselectedScreenState();
}

class _myselectedScreenState extends State<myselectedScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height * 0.7;

    return Scaffold(
        appBar: AppBar(
          title: Text('Message Sent'),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Container(
              height: screenHeight,
              child: Expanded(
                child: ListView.builder(
                    itemCount: widget.selectedItems.length,
                    itemBuilder: (context, index) {
                      return Consumer<messageScreenProider>(
                          builder: (context, value, child) {
                        return ListTile(
                          title: Text(widget.selectedItems[index]),
                        );
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DrawerScreen(),
                          ),
                        );
                      },
                      child: Text('Back'))),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Thank you for your response. Help will arive at your loaction as soon as possbile",
                  style:
                      TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
                ),
              ),
            )
          ],
        ));
  }
}
