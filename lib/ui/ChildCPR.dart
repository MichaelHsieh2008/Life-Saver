import 'package:flutter/material.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/AdultCPR.dart';
import 'package:LifeSavers/ui/ChildMain.dart';
import 'package:LifeSavers/ui/InfantMain.dart';

class ChildCPR extends StatelessWidget {
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
                      'Child CPR is very different in comparison to Adult CPR. In this page, will contain links to infant (typically around less than a year old) and child CPR (between a year and 12 years old).',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova'
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      'If the victim is an infant, see the article below:',
                      style: TextStyle(
                        fontSize: 27,
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
                                    MaterialPageRoute(builder: (context) => InfantCPR())
                                );
                              },
                              child: Text("Age < 1 year",
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
                    child: Text('If the victim is a child, see the article below:',
                      style: TextStyle(
                        fontSize: 27, fontWeight: FontWeight.bold,
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
                                    MaterialPageRoute(builder: (context) => ChildMain())
                                );
                              },
                              child: Text("Ages (1-12)",
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
                  Center(
                      child: Column(
                        children: [
                          SizedBox(height:70),
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
                          SizedBox(height: 15),

                          Center(
                            child: Column(
                                children: [
                                  SizedBox(height:20),
                                  SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => AdultCPR())
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

                                ]
                            ),
                          ),
                        ],
                      ))
                ])
        ));
  }
}