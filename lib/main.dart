import 'package:flutter/material.dart';
import 'package:LifeSavers/ui/LandingPage.dart';
import 'package:LifeSavers/ui/AED.dart';
import 'package:LifeSavers/ui/AEDInfo.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Savers CPR App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Life Savers CPR App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _showDisclaimerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Disclaimer'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text("This app provides general information on CPR (Cardiopulmonary Resuscitation) based on guidelines, such as those from the American Heart Association's Basic Life Support (BLS). The information presented in this app is intended for educational and informational purposes only."

                    "\n1. **Not a Substitute for Professional Training**: This app is not a substitute for professional CPR training or medical advice. It does not certify you as a CPR provider. Always seek proper training and certification from qualified instructors."

                    "\n2. **Emergency Situations**: In a real-life emergency, immediately call your local emergency number (e.g., 911) and follow the guidance of trained professionals. CPR should only be administered by individuals with proper training and certification."

                    "\n3. **Applicable Guidelines**: CPR guidelines may change over time. This app may not always reflect the most current guidelines or standards. It's essential to stay updated with the latest practices and guidelines for CPR."

                    "\n4. **No Medical Diagnosis**: This app does not provide medical diagnosis or personalized medical advice. It does not replace consultation with healthcare professionals."

                    "\n5. **Liability**: The creators of this app, its developers, and its content providers shall not be held liable for any actions taken or not taken based on the information provided in this app. Users are responsible for their decisions and actions in emergency situations."

                    "\n6. **Accessibility**: This app aims to be accessible to all users. If you encounter accessibility issues or require accommodations, please contact us to help us improve the app's accessibility."

                    "\nBy using this app, you acknowledge and agree to these terms. If you do not agree with these terms, please do not use this app."

                    "\nRemember, in a medical emergency, always prioritize calling emergency services and seeking assistance from trained professionals. Proper CPR training is essential for effective response in emergencies.")
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                },
                  child: Text('Agree'),
                ),
              ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Set the border color to blue.
          width: 7.0, // Set the border width.
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Life Savers CPR App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/LifeSavers.png'),
                width: 500,
              ),
              Padding(padding: EdgeInsets.all(5)),
              const SizedBox(
                height: 5.0,
                width: 50.0,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  width: 250,
                  height: 80,
                  child: SizedBox(
                    width: 250,
                    height: 80,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()),
                        );
                      },
                      color: Colors.red,
                      child: Text(
                        "Go",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'ProximaNova',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _showDisclaimerDialog(context);
                },
                child: Text('Disclaimer'),
              ),
            ],
          ),
        ),
      ),
    );
  }}