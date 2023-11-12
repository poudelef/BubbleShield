import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bubble Shield",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.2,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Text(
                          "Introduction",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          """In an era where campus safety is of paramount concern, we proudly present Bubble Shield – an innovative mobile application designed to empower students with a reliable, discreet, and rapid means of requesting assistance during emergencies. With its unique set of features, Bubble Shield is more than just an app; it's your personal safety companion on campus.
                      
Our mission is simple: to ensure that every student can swiftly and effectively communicate their need for help when it matters most. Bubble Shield is tailored to meet this objective, offering a seamless solution for urgent situations that may arise during your academic journey.
                      
Join us on a journey to explore the dynamic capabilities of Bubble Shield and discover how it can transform your sense of security while studying, living, and thriving on your campus""",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Key Features",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Voice Activation",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          """1. Bubble Shield allows users to activate the app by saying their school name followed by "Help," for example, "UC_Help."
2. This feature is vital for ensuring quick and discreet emergency requests, as it eliminates the need to fumble with the phone in stressful situations.""",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Location Sharing",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          """1. When activated, Bubble Shield automatically shares the user's current location with the school's security department.
2. Precise location data is critical for emergency response, as it enables security personnel to reach the user's exact location quickly.""",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Voice Recording (Optional)",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          """1. Bubble Shield can record audio during emergency situations, providing an additional layer of information for responders.
2. This feature can help responders better understand the nature of the emergency and take appropriate actions.""",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Cancellation Period",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          """1. Bubble Shield incorporates a 10-second cancellation window to prevent accidental emergency alerts.
2. This user-friendly feature ensures that users have the easy access of the app and can feel safe around campus environment.""",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
