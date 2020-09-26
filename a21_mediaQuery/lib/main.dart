import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> generateMethod = <Widget>[
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Media Query'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(children: generateMethod)
          : Row(children: generateMethod),
    );
  }
}
