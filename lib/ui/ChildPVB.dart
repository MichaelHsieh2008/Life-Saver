import 'package:flutter/material.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart';
import 'package:LifeSavers/ui/AdultCPR.dart';
import 'package:LifeSavers/ui/ChildNP.dart';
import 'package:LifeSavers/ui/ChildPNB.dart';
import 'package:LifeSavers/ui/LandingPage.dart';

class ChildPVB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Child - Pulse and Breathing'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What to do when there is a pulse and visible breathing',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      'See if the child is responsive by shaking them gently or tapping them. If the child is still unresponsive, it is still important to keep an eye on them. \n\nEnsure that the emergency responders are called. \n\nIf someone is unconscious, it is still possible for their heartbeat or breathing to stop. If this happens, refer to the articles below:',
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
                          SizedBox(height:50),
                          SizedBox(
                            width: 250,
                            height: 80,
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ChildPNB())
                                  );
                                },
                                child: Text("No Breathing",
                                  style: TextStyle(
                                    fontSize: 35,
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