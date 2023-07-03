import 'package:flutter/material.dart';
import 'package:lifes/widgets/stepWidget.dart';
import 'package:lifes/ui/AED.dart';
import 'package:lifes/ui/ChildCPR.dart';
import 'package:lifes/ui/AdultCPR.dart';

class AdultCPR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adult CPR Steps'),
      ),
      body: Center(
        child: Text('This is a new page!'),
      ),
    );
  }
}