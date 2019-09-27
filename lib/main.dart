import 'package:flutter/material.dart';


// best practice to separate body widget into its own funct
// this minimizes nesting braces
// top level function (possible to be outside of a class)
//Widget helloRectangle(){
//
//  return Container(
//    color: Colors.deepPurpleAccent,
//  );
//
//
//}


class HelloRectangle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center();

  }
}

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
          title: Text("hello-rectangle branch"),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}
