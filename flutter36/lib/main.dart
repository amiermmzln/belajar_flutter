import 'package:flutter/material.dart';
import './post_result_model.dart';
import 'package:flutter36/post_result_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('API DEMO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text((user != null)
                ? user.id +
                    " | " +
                    user.name +
                    " | " +
                    postResult.job +
                    " | " +
                    postResult.created
                : "tidak ada data"),
            RaisedButton(
              onPressed: () {
                PostResult.connectToAPI("Suzy", "celebrity").then((value) {
                  postResult = value;
                  setState(() {});
                });
              },
              child: Text('POST'),
            )
          ],
        ),
      ),
    ));
  }
}
