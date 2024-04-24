import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart';
import 'package:LifeSavers/ui/LandingPage.dart';
import 'package:LifeSavers/ui/InfantPNB.dart';
import 'package:LifeSavers/ui/InfantPVB.dart';

class InfantNP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Infant - No Pulse'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What to do when there is no pulse',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      "If there is no pulse, start CPR and call emergency services. Stand or kneel to the side of the infant and perform chest compressions with 2 fingers up and down about the center of the victim's chest like this:",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Image(
                    image: AssetImage('assets/images/infantcpr.png'),
                    width: 400,
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      "If you are alone, perform 30 chest compressions, then 2 mouth to mouth breaths in cycles. If you are with another person, send them to get an AED and perform 15 chest compressions and 2 breaths in cycles instead.\n\nContinue until person is responsive, or until emergency responders or an AED arrives. Refer to AED steps below:",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold
                      ),
                    ),
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
                            "AED",
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
                    ],
                  ),
                  Center(
                      child: Column(
                        children: [
                          SizedBox(height:40),
                          SizedBox(
                            width: 270,
                            height: 90,
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => InfantPNB())
                                  );
                                },
                                child: Text("Pulse/No Breathing",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                color: Colors.red
                            ),
                          ),
                          Center(
                            child: Column(
                                children: [
                                  SizedBox(height:40),
                                  SizedBox(
                                    width: 270,
                                    height: 90,
                                    child: MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => InfantPVB())
                                          );
                                        },
                                        child: Text("Pulse and Breathing",
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        color: Colors.blue
                          ),
                        ),
                      ]
                    ),
                  ),
                ],
              )
            )
          ]
        )
      )
    );
  }
}