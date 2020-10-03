import 'package:flutter/material.dart';
import './colorful_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Transform'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColorfulButton(Colors.pink, Colors.amber, Icons.computer),
              ColorfulButton(Colors.blue, Colors.purple, Icons.alarm),
              ColorfulButton(
                  Colors.green, Colors.lime, Icons.face_unlock_outlined),
              ColorfulButton(
                  Colors.deepOrange, Colors.yellow, Icons.add_a_photo),
            ],
          ),
        ),
      ),
    );
  }
}
