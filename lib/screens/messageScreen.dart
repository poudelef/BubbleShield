import 'package:faf/screens/myselected_messageScreen.dart';
import 'package:faf/provider/message_Screen_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class messageScreen extends StatefulWidget {
  @override
  State<messageScreen> createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  List<int> selecteditems = [];

  @override
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height * 0.8;

    return Scaffold(
        appBar: AppBar(
          title: Text('Emergency Message'),
        ),
        body: Column(
          children: [
            Container(
              height: screenHeight,
              child: Expanded(
                child: ListView.builder(
                    itemCount: text.length,
                    itemBuilder: (context, index) {
                      return Consumer<messageScreenProider>(
                          builder: (context, value, child) {
                        return ListTile(
                          onTap: () {
                            if (value.selecteditem.contains(index)) {
                              value.removeitem(index);
                            } else {
                              value.additem(index);
                            }
                          },
                          title: Text(text[index].toString()),
                          trailing: Icon(value.selecteditem.contains(index)
                              ? Icons.check_box_outlined
                              : Icons.check_box_outline_blank_rounded),
                        );
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: Provider.of<messageScreenProider>(context)
                      .selecteditem
                      .isNotEmpty
                  ? () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => myselectedScreen(
                            selectedItems: text
                                .asMap()
                                .entries
                                .where((entry) =>
                                    Provider.of<messageScreenProider>(context)
                                        .selecteditem
                                        .contains(entry.key))
                                .map((entry) => entry.value)
                                .toList(),
                          ),
                        ),
                      );
                    }
                  : null,
              child: Text('Send Message'),
            )
          ],
        ));
  }
}

List<String> text = [
  "Some one is following me ",
  "Bullied",
  "Harrasment",
  "Racism",
  "Sexism",
  "Mis-treated",
  "Violence",
  "Robbery"
];
