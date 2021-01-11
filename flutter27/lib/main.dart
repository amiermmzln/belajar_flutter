import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(top: BorderSide(color: Colors.purple, width: 5))),
      tabs: <Widget>[
        Tab(icon: Icon(Icons.comment), text: 'Comments'),
        Tab(
          child: Image(image: AssetImage('assets/cute.png')),
        ),
        Tab(icon: Icon(Icons.computer)),
        Tab(
          text: 'News',
        )
      ],
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contoh Tab Bar'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                color: Colors.amber,
                child: myTabBar,
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text('Tab 1')),
              Center(child: Text('Tab 2')),
              Center(child: Text('Tab 3')),
              Center(child: Text('Tab 4')),
            ],
          ),
        ),
      ),
    );
  }
}
