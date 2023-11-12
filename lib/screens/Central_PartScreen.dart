import 'package:faf/screens/messageScreen.dart';
import 'package:flutter/material.dart';

import 'package:speech_to_text/speech_to_text.dart';

class Central_part extends StatefulWidget {
  const Central_part({super.key});

  @override
  State<Central_part> createState() => _Central_partState();
}

class _Central_partState extends State<Central_part> {
  TextEditingController textController = TextEditingController();

  SpeechToText _speechToText = SpeechToText();
  bool isListening = false;
  var recorddword = 'Call for Help';
  var topword = "Listening";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.lightBlue],
                begin: Alignment.centerLeft)),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.blue.shade200,
                                Colors.blue.shade100,
                                Colors.blue.shade200
                              ], begin: Alignment.centerLeft),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                bottomRight: Radius.circular(50),
                                topRight: Radius.circular(100),
                                bottomLeft: Radius.circular(50),
                              )),
                          height: screenHeight * 0.7,
                          width: screenWidth * 1,
                          child: Column(
                            children: [
                              isListening
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Text(
                                        topword,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  : Text(''),
                              Padding(
                                padding: const EdgeInsets.only(top: 180),
                                child: Center(
                                    child: Text(recorddword +
                                        textController.text.toString())),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 10, bottom: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 100, right: 100, top: 30),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTapDown: (details) async {
                                      if (!isListening) {
                                        var available =
                                            await _speechToText.initialize();
                                        if (available) {
                                          setState(() {
                                            isListening = true;
                                            _speechToText.listen(
                                                onResult: (result) {
                                              setState(() {
                                                recorddword =
                                                    result.recognizedWords;
                                              });
                                            });
                                          });
                                        }
                                      }
                                      ;
                                    },
                                    onTapUp: (details) async {
                                      setState(() {
                                        isListening = false;
                                      });
                                      _speechToText.stop();
                                    },
                                    child: CircleAvatar(
                                      radius: 35,
                                      child: Icon(isListening
                                          ? Icons.mic
                                          : Icons.mic_off),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.15,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => messageScreen(),
                                        ),
                                      );
                                    },
                                    child: Icon(Icons.message_rounded),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
