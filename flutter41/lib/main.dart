import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isON = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('shared Preferences Examples'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                value: isON,
                onChanged: (newValue) {
                  setState(() {
                    isON = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
