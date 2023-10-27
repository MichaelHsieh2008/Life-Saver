import 'package:flutter/material.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart';
import 'package:LifeSavers/ui/AdultCPR.dart';
import 'package:LifeSavers/ui/AdultPVB.dart';
import 'package:LifeSavers/ui/AdultPNB.dart';
import 'package:LifeSavers/ui/LandingPage.dart';

class AdultNP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adult - No Pulse'),
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
                      "If there is no pulse, start CPR and call emergency services. Perform chest compressions slightly left to the victim's chest like this:",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Image(
                    image: AssetImage('assets/images/CPR Position.png'),
                    width: 400,
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      "Perform 30 chest compressions, then 2 mouth to mouth breaths in cycles. Continue until person is responsive, or until emergency responders or an AED arrives. Refer to AED steps below:",
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
                              width: 250,
                              height: 80,
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => AdultPNB())
                                  );
                                },
                                child: Text("Pulse/No Breathing",
                                  style: TextStyle(
                                    fontSize: 24,
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
                      ]
                    ),
                  ),
                ]
              ),
            ),
          ],
        )
      )
    );
  }
}