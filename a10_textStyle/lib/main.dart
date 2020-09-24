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
          title: Text('Latihan TextStyle'),
        ),
        body: Center(
          child: Text(
            'Uzumaki Agfian Namikaze!',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Raleway',
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationThickness: 4,
              decorationStyle: TextDecorationStyle.wavy,
              wordSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
