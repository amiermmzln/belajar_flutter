import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient Opacity'),
        ),
        body: Center(
          child: Image(
            width: 300,
            image: NetworkImage('https://wallpaperaccess.com/full/211836.jpg'),
          ),
        ),
      ),
    );
  }
}
