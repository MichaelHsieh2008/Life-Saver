import 'package:flutter/material.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/ChildCPR.dart' as ChildCPRPage;
import 'package:LifeSavers/ui/AdultCPR.dart' as AdultCPRPage;
import 'package:LifeSavers/ui/Naloxone.dart';



class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Main Screen"),
        ),
        body: ListView(
          children: [
            Image(
              image: AssetImage('assets/images/LifeSavers.png'),
              width: 500,
            ),


          SizedBox(
          width: 250,
          height: 65,
          child: MaterialButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AED())
                 );
              }, child: Text("Use of AED",
                  style: TextStyle(
                    fontSize: 32,
                ),
              ),
              color:Colors.blue,
              minWidth: 250
            ),
          ),
          SizedBox(height:25),
          SizedBox(
            width: 250,
            height: 65,
            child: MaterialButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChildCPRPage.ChildCPR())
                 );
              }, child: Text("Child CPR",
              style: TextStyle(
                fontSize: 32,
                ),
              ),
              color:Colors.blue,
              minWidth: 250
            ),
          ),
          SizedBox(height:25),
          SizedBox(
            width: 250,
            height: 65,
              child: MaterialButton(onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdultCPRPage.AdultCPR())
              );
              }, child: Text("Adult CPR",
                  style: TextStyle(
                  fontSize: 32,
                ),
              ), color:Colors.blue,
                minWidth: 250
              ),
          ),
            SizedBox(height:25),
            SizedBox(
              width: 250,
              height: 65,
              child: MaterialButton(onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Naloxone())
              );
              }, child: Text("Naloxone Use",
                style: TextStyle(
                  fontSize: 32,
                ),
              ), color:Colors.blue,
                  minWidth: 250
              ),
            ),
        ],
      )
    );
  }
}
