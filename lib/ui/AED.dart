import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart' as ChildCPRPage;
import 'package:LifeSavers/ui/AdultCPR.dart' as AdultCPRPage;
import 'package:LifeSavers/ui/AEDInfo.dart';

class AED extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use of AED Steps'),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AED Information',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                '   AEDs or Automatic External Defibrillators are lightweight portable devices used in emergency circumstances when the heart has a fatal rhythm.\n\n The AED gives a shock to the heart in order to attempt to return the heart to a normal rhythm.\n\nBelow are steps to use an AED for adults and children',
                style: TextStyle(fontSize: 25,
                fontFamily: 'ProximaNova'),
                textAlign: TextAlign.left,

              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  SizedBox(
                    width: 300,
                    height: 120,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AEDInfo())
                        );
                      },
                      child: Text("Steps for AED",
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            ),
          ),
          ]
        )
     )
    );
  }
}
