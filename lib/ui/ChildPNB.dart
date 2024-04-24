import 'package:flutter/material.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart';
import 'package:LifeSavers/ui/AdultCPR.dart';
import 'package:LifeSavers/ui/ChildPVB.dart';
import 'package:LifeSavers/ui/ChildNP.dart';
import 'package:LifeSavers/ui/LandingPage.dart';

class ChildPNB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Child - Pulse But No Breathing'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What to do when there is a pulse but no visible breathing',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      'If there is no breathing, it is vital that you act quickly as the heart beat could easily stop. \n\nTilt the head back and perform rescue breathing (mouth-to-mouth resuscitation) or about 1 breath every 2-3 seconds:',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Image(
                    image: AssetImage('assets/images/rescuebreathing.png'),
                    width: 400,
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      "Check the child's pulse every 2 minutes. If their pulse stops/have trouble breathing, or have entered a stable condition, refer to the articles below",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold
                      ),
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
                                      MaterialPageRoute(builder: (context) => ChildPVB())
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
                          Center(
                            child: Column(
                                children: [
                                  SizedBox(height:40),
                                  SizedBox(
                                    width: 250,
                                    height: 80,
                                    child: MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => ChildNP())
                                          );
                                        },
                                        child: Text("No Pulse",
                                          style: TextStyle(
                                            fontSize: 35,
                                          ),
                                        ),
                                        color: Colors.red
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          Center(
                            child: Column(
                                children: [
                                  SizedBox(height:40),
                                  SizedBox(
                                    width: 250,
                                    height: 80,
                                    child: MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => LandingPage())
                                          );
                                        },
                                        child: Text("Home",
                                          style: TextStyle(
                                            fontSize: 35,
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