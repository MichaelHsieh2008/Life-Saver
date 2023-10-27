import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart' as ChildCPRPage;
import 'package:LifeSavers/ui/AdultPVB.dart';
import 'package:LifeSavers/ui/AdultPNB.dart';
import 'package:LifeSavers/ui/AdultNP.dart';

class AdultCPR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adult CPR Steps'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How to Perform Adult CPR',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    '1. Ensure the surrounding area is safe and check for responsiveness from the person. It is important to keep in mind that anyone aged above 12 years old is considered an adult for CPR \n\n'
                        '2. Shout for help and if possible contact emergency responders \n\n'
                        '3. If possible get an AED and emergency equipment \n\n'
                        'Finally, look for breathing and pulse within 10 seconds. A pulse can be taken by gently pressing down on the neck to find the carotid artery and feel a pulse like this:',
                    style: TextStyle(
                      fontSize: 27,
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Image(
                  image: AssetImage('assets/images/Pulse.png'),
                  width: 400,
                ),
                SizedBox(height: 25),
                Center(
                  child: Text(
                    'If the person has a pulse and visible breathing:',
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
                              MaterialPageRoute(builder: (context) => AdultPVB())
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
                                  MaterialPageRoute(builder: (context) => AdultPNB())
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
                SizedBox(height: 40),
                Center(
                  child: Text('If there is no pulse:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaNova',
                    ),
                    textAlign: TextAlign.left,
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
                                  MaterialPageRoute(builder: (context) => AdultNP())
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
                                    MaterialPageRoute(builder: (context) => ChildCPRPage.ChildCPR())
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