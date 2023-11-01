import 'package:faf/Picture_navigation/ProfilePicturePage.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfilrState();
}

class _ProfilrState extends State<Profile> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue.shade600,
          Colors.blue.shade400,
          Colors.blue.shade200
        ])),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Your Information",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight * 0.21,
                          width: screenWidth * 0.21,
                          child: Center(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfilePicturePage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/Me.jpg',
                              height: screenWidth * 0.23,
                              width: screenWidth * 0.23,
                              fit: BoxFit.cover,
                            ),
                          )),
                        ),
                        SizedBox(
                          width: screenWidth * 0.3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Text(
                                '''Your information 
is safe with us.''',
                                style: TextStyle(
                                    fontSize: 14, fontStyle: FontStyle.italic),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "-Bubble Shield",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Row(
                children: [
                  Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.6,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 1,
                                ),
                                Icon(Icons.person),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "First name: Sambhav",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.person),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Last Name: Poudel",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.phone),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Contact: +1 (513)-123-4562",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.phone),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "E Contact: +1 (513)-987-6542 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.school),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "University of Cincinnati",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.photo),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "M_ID/ UC_ID : M15520009 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.man),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Pronoun: He/Him",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.calendar_month),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "DOB: 2005/01/31",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.mail),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "S Mail: poudelsb@mail.uc.edu",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Spacer(),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Icon(Icons.mail),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "P Mail: sambhavpoudel88@gmail.com ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
