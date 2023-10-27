import 'package:flutter/material.dart';
import 'package:LifeSavers/widgets/stepWidget.dart';
import 'package:LifeSavers/ui/LandingPage.dart';
import 'package:LifeSavers/ui/AEDInfo.dart';
import 'package:LifeSavers/ui/AEDInfo3.dart';

class AEDInfo2 extends StatelessWidget {
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
                        "   2. The AED will automatically play or display instructions. \n\nAllow the AED to read the person's heart rhythm \n\nEnsure that the person needing resuscitation is not wet, and that their chest is bare. The correct ways to place the AED pads for adults and children are shown below",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'ProximaNova'
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Image(
                  image: AssetImage('assets/images/CPRAdult Final.png'),
                  width: 400,
                ),

                SizedBox(height: 20),
                Image(
                  image: AssetImage('assets/images/CPRChild Final.png'),
                  width: 400,
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
                                builder: (context) => AEDInfo()),
                          );
                        },
                        child: Text(
                          "Back",
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
                            MaterialPageRoute(builder: (context) => AEDInfo3()),
                          );
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 250,
                    height: 85,
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
                ),
              ]
          )
      )
    );
  }
}
