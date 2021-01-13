import 'package:flutter/material.dart';
import './colorful.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Colorful Buttons'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.amber, Colors.blue, Icons.comment),
              ColorfulButton(Colors.green, Colors.blue, Icons.computer),
              ColorfulButton(Colors.indigo, Colors.blue, Icons.phone),
            ],
          ),
        ),
      ),
    );
  }
}
