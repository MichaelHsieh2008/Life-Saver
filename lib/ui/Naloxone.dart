import 'package:flutter/material.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/AdultPNB.dart';
import 'package:LifeSavers/ui/LandingPage.dart';

class Naloxone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Naloxone Administration'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What to do when someone has an opioid overdose',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      'When overdosing on opioids, people often have difficulty breathing or go into respiratory failure. Naloxone is a medication to temporarily reverse the effects of an opioid overdose.\n\n If someone is seen having or likely have had an overdose, emergency responders should be called immediately:',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Image(
                    image: AssetImage('assets/images/emergency responders.png'),
                    width: 400,
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      "The naloxone administration usually comes in a package with a nasal spray like this:",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Image(
                    image: AssetImage('assets/images/naloxone.png'),
                    width: 400,
                  ),
                  Center(
                    child: Text(
                      "Tilt the person's head back and put the naloxone spray into the person's nose and push the plunger. Wait for about 2 minutes and check for responsiveness.\n\n If not, another may be needed and ensure emergency responders are on their way. Rescue breathing may be needed which can be found below:",
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
                                      MaterialPageRoute(builder: (context) => AdultPNB())
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
                                              MaterialPageRoute(builder: (context) => AED())
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