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
          title: Text('Custom Clipper'),
        ),
        body: Center(
          child: ClipPath(
            child: Image(
              width: 300,
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqLKK86XYr4B12vJh15thesHKTI12bP7jIzA&usqp=CAU'),
            ),
          ),
        ),
      ),
    );
  }
}
