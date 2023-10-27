import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart';
import 'package:LifeSavers/ui/AdultCPR.dart';
import 'package:LifeSavers/ui/AdultPVB.dart';
import 'package:LifeSavers/ui/AdultNP.dart';
import 'package:LifeSavers/ui/LandingPage.dart';


class AdultPNB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adult - Pulse But No Breathing'),
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
                      'If there is no breathing, it is vital that you act quickly as the heart beat could easily stop. \n\nPerform rescue breathing (mouth-to-mouth resuscitation) or about 1 breath every 6 seconds:',
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
                      "Check the person's pulse every 2 minutes. If their pulse stops, or they enter a stable condition, refer to the articles below",
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
                            width: 250,
                            height: 80,
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => AdultPVB())
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
                                              MaterialPageRoute(builder: (context) => AdultNP())
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