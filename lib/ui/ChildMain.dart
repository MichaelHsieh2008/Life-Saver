import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/AdultCPR.dart' as AdultCPRPage;
import 'package:LifeSavers/ui/InfantMain.dart';
import 'package:LifeSavers/ui/LandingPage.dart';
import 'package:LifeSavers/ui/ChildNP.dart';
import 'package:LifeSavers/ui/ChildPVB.dart';
import 'package:LifeSavers/ui/ChildPNB.dart';

class ChildMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Child CPR Steps'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How to Perform Child CPR',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    '1. Ensure the surrounding area is safe and check for responsiveness from the person. It is important to keep in mind that anyone aged between 1 to 12 years old is considered an child for CPR \n\n'
                        '2. Shout for help and if possible contact emergency responders \n\n'
                        '3. If possible get an AED and/or emergency equipment \n\n'
                        '4. Look for breathing and pulse within 10 seconds. A pulse can be taken by gently pressing down on the neck to find the carotid artery and feel a pulse like this:',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaNova'
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Image(
                  image: AssetImage('assets/images/Pulse.png'),
                  width: 400,
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    'If the child has a pulse and visible breathing:',
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
                                  MaterialPageRoute(builder: (context) => ChildPVB())
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
                                  MaterialPageRoute(builder: (context) => ChildPNB())
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
                                  MaterialPageRoute(builder: (context) => ChildNP())
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
                                    MaterialPageRoute(builder: (context) => InfantCPR())
                                );
                              },
                              child: Text("Infant CPR",
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