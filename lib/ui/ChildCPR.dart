import 'package:flutter/material.dart';
import 'package:lifes/widgets/stepWidget.dart';
import 'package:lifes/ui/AED.dart';
import 'package:lifes/ui/ChildCPR.dart';
import 'package:lifes/ui/AdultCPR.dart';

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
                'If there is a pulse and visible breathing:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1. Ensure the surrounding area is safe and check for responsiveness from the person',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        '2. Shout for help and if possible contact emergency responders',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        '3. If possible get an AED and/or emergency equipment',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        '4. Look for breathing and pulse within 10 seconds',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If there is a pulse, but no breathing:',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Perform mouth-to-mouth resuscitation (1 breath every 2-3 seconds)',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Check pulse every 2 minutes',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If there is no pulse, start CPR',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'If there is no pulse and no breathing:',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Start CPR',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Perform chest compressions (slightly to the left of the victim’s chest)',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Ensure the compressions push inwards approximately 1/3rd the chest depth or around 1-2 inches deep with one or two hands',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Perform 15 chest compressions then two mouth-to-mouth breaths in cycles',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Continue until emergency responders or AED arrives (refer to Use of AED steps) (link to AED use)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
