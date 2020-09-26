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
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text('Latihan AppBar'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.green],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage("assets/pattern2.png"),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeat),
            ),
          ),
        ),
      ),
    );
  }
}
