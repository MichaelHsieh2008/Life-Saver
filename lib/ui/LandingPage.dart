import 'package:flutter/material.dart';
import 'package:lifes/widgets/stepWidget.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPage();
}

class _landingPage extends State<landingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Main Screen"),
        ),
        body: ListView(
          children: [
            // TODO brandon and michael work on this part
            Image(
              image: AssetImage('assets/images/LifeSavers.png'),
              width: 500,
            ),
            MaterialButton(onPressed: () {}, child: Text("Contact Emergency Services"), color:Colors.red),
            MaterialButton(onPressed: () {}, child: Text("Use of AED"), color:Colors.blue),
            MaterialButton(onPressed: () {}, child: Text("Child CPR"), color:Colors.blue),
            MaterialButton(onPressed: () {}, child: Text("Adult CPR"), color:Colors.blue),

          ],
        ));
  }
}
