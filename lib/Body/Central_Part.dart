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
  var recorddword = 'Say what you want';
  var topword = "Listening";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue.shade900,
          Colors.blue.shade800,
          Colors.blue.shade700
        ], begin: Alignment.centerLeft)),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.blue.shade600,
                              Colors.blue.shade400,
                              Colors.blue.shade200
                            ], begin: Alignment.centerLeft),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(120),
                              bottomRight: Radius.circular(120),
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
                              child: Center(child: Text(recorddword)),
                            )
                          ],
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
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.blue.shade600,
                                Colors.blue.shade400,
                                Colors.blue.shade200
                              ], begin: Alignment.centerLeft),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          height: screenHeight * 0.18,
                          width: screenWidth * 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 100, right: 100, top: 30),
                                child: Row(
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: screenHeight * 0.089,
                                              child: TextField(
                                                controller: textController,
                                                decoration: InputDecoration(
                                                  hintText: 'Enter text here',
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.keyboard,
                                      ),
                                    ),
                                    Spacer(),
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
                                    Spacer(),
                                    FloatingActionButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.contact_emergency,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
