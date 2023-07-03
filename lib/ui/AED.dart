import 'package:flutter/material.dart';
import 'package:lifes/widgets/stepWidget.dart';
import 'package:lifes/ui/AED.dart';
import 'package:lifes/ui/ChildCPR.dart';
import 'package:lifes/ui/AdultCPR.dart';

class AED extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use of AED Steps'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'How To Use An AED',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Center(
            child: Text(' 1. Turn on AED '
                '\n 2. Follow steps listed or played by the AED '
                '\n 3. Continue to follow steps of AED until the person is responsive or emergency responders arrive',
              style: TextStyle(fontSize: 24),
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
                            MaterialPageRoute(builder: (context) => ChildCPR())
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
                SizedBox(height:40),
                SizedBox(
                  width: 250,
                  height: 80,
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
              ],
            ),
          ),
        ],
      ),
    );
    }
  }

