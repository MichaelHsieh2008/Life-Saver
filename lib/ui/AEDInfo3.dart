import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/AEDInfo2.dart';
import 'package:LifeSavers/ui/LandingPage.dart';

class AEDInfo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AED Information'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AED Information',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "   3. Ensure that no one is touching the person when the AED is delivering the defibrilation shock.\n\n If the victim or pulse is not responsive,\n\n Listen to AED instructions as CPR might be needed. If so, refer to the other articles",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'ProximaNova'
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Image(
                  image: AssetImage('assets/images/AEDshock.png'),
                  width: 400,
                ),
                SizedBox(height: 20),
                Center(
                child:SizedBox(
                  width: 250,
                  height: 70,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AEDInfo2())
                        );
                      },
                      child: Text("Back",
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      color: Colors.blue
                    ),
                  ),
                ),
                SizedBox(height:20),
                Center(
                  child: SizedBox(
                    width: 250,
                    height: 70,
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
                ),
              ]
          )
      ),
    );
  }
}