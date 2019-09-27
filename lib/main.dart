import 'package:flutter/material.dart';
import 'selection.dart';

void main() {
  // Inflate the given widget and attach it to the screen.
  // takes a widget as arg
  // best practice to add comma at the end of the widget call
  runApp(
    // Note: try not to reinvent the wheel with the Container widget.
    // MaterialApp widget is the baseline
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'hello-rectangle branch',
            style: TextStyle(fontFamily: 'OpenSans', color: Colors.pinkAccent),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: Selection(),
      ),
    ),
  );
}
