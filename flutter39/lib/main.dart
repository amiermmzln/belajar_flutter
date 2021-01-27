import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Switcher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(seconds: 1),
              ),
              Switch(
                activeColor: Colors.green,
                inactiveTrackColor: Colors.green[200],
                value: isON,
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {
                    if (isON)
                      myWidget = Text(
                        'Switch: ON',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      );
                    else
                      myWidget = Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
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
