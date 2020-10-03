import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            title: Text('AppBar with Custom Height'),
            flexibleSpace: Stack(children: [
              Positioned(
                bottom: 1.0,
                right: 1.0,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'AppBar with custom height--',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
