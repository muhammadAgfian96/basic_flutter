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
          title: Text('Latihan Stack'),
        ),
        body: Stack(
          children: [
            // background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1, child: Container(color: Colors.blue[300])),
                      Flexible(
                          flex: 1, child: Container(color: Colors.red[300])),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1, child: Container(color: Colors.red[300])),
                      Flexible(
                          flex: 1, child: Container(color: Colors.blue[300])),
                    ],
                  ),
                )
              ],
            ),
            // listview scroll
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'ini adalah text yang ada di tengah dari stack',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'ini adalah text yang ada di tengah dari stack',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'ini adalah text yang ada di tengah dari stack',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'ini adalah text yang ada di tengah dari stack',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            // button
            Align(
              alignment: Alignment(0.9, 0.9),
              child: RaisedButton(
                onPressed: () {},
                child: Text('My Button'),
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
