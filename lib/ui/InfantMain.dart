import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/AdultCPR.dart' as AdultCPRPage;
import 'package:LifeSavers/ui/ChildMain.dart';
import 'package:LifeSavers/ui/LandingPage.dart';
import 'package:LifeSavers/ui/InfantNP.dart';
import 'package:LifeSavers/ui/InfantPVB.dart';
import 'package:LifeSavers/ui/InfantPNB.dart';

class InfantCPR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Infant CPR Steps'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How to Perform Infant CPR',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    '1. Ensure the surrounding area is safe and check for responsiveness from the infant. If there, obtain consent from the parent/guardian. It is important to keep in mind that anyone aged under 1 year old is considered an infant for CPR \n\n'
                        '2. Shout for help and if possible contact emergency responders \n\n'
                        '3. If possible get an AED and/or emergency equipment \n\n'
                        '4. Look for breathing and pulse within 10 seconds. A pulse can be taken by gently pressing down on the arm to find the brachial artery and feel a pulse like this:',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaNova'
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Image(
                  image: AssetImage('assets/images/infantpulse.png'),
                  width: 400,
                ),
                SizedBox(height: 25),
                Center(
                  child: Text(
                    'If the infant has a pulse and visible breathing:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaNova'
                    ),

                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height:15),
                      SizedBox(
                        width: 250,
                        height: 80,
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => InfantPVB())
                              );
                            },
                            child: Text("Click Here",
                              style: TextStyle(
                                fontSize: 27,
                              ),
                            ),
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text('If there is a pulse, but no breathing:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaNova'
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height:15),
                      SizedBox(
                        width: 250,
                        height: 80,
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => InfantPNB())
                              );
                            },
                            child: Text("Click Here",
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text('If there is no pulse:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaNova'
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height:15),
                      SizedBox(
                        width: 250,
                        height: 80,
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => InfantNP())
                              );
                            },
                            child: Text("Click Here",
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Center(
                  child: Column(
                      children: [
                        SizedBox(height:40),
                        SizedBox(
                          width: 300,
                          height: 100,
                          child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AED())
                                );
                              },
                              child: Text("Use of AED",
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                              color: Colors.blue
                          ),
                        ),
                        SizedBox(height:40),
                        SizedBox(
                          width: 300,
                          height: 100,
                          child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AdultCPRPage.AdultCPR())
                                );
                              },
                              child: Text("Adult CPR",
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                              color: Colors.blue
                          ),
                        ),
                        SizedBox(height:40),
                        SizedBox(
                          width: 300,
                          height: 100,
                          child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ChildMain())
                                );
                              },
                              child: Text("Child CPR",
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
            ))
    );
  }
}