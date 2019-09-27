import 'package:flutter/material.dart';
import 'selection.dart';

void main() {

  runApp(MainApp());
}

class MainApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Main Page',
              style: TextStyle(fontFamily: 'OpenSans', color: Colors.pinkAccent),
            ),
            backgroundColor: Colors.greenAccent,
          ),
          body: Selection(
              title: 'Test',
              subtitle: 'subtitle',
              color: Colors.cyan,
              icon: Icons.bug_report),
        ),
      );
  }

}