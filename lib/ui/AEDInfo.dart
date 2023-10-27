import 'package:LifeSavers/ui/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart' as ChildCPRPage;
import 'package:LifeSavers/ui/AdultCPR.dart' as AdultCPRPage;
import 'package:LifeSavers/ui/AEDInfo2.dart';

class AEDInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AED Information'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AED Information',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      '   When using an AED, it is important to ensure that it is used properly. Below are pictures to show where the AED pads should be placed'
                          '\n\n\n 1. Firstly, turn on the power button',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'ProximaNova'
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Image(
                    image: AssetImage('assets/images/aedpower.png'),
                    width: 400,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 170,
                        height: 70,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AED()),
                            );
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        height: 70,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AEDInfo2()),
                            );
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                      child: SizedBox(
                        width: 250,
                        height: 85,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LandingPage()),
                            );
                          },
                          child: Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 35,
                            ),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  ),
                ]
              )
            )
          );
        }
      }

