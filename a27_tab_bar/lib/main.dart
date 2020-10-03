import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4, // jumlah tab bar
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contoh Tab Bar'),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.comment), text: "Comments"),
              Tab(
                child: Container(
                  child: Image(image: AssetImage('assets/emoji_cute.png')),
                ),
              ),
              Tab(icon: Icon(Icons.computer), text: "Computer"),
              Tab(icon: Icon(Icons.text_fields), text: "News"),
            ]),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('ini tab 1'),
              ),
              Center(
                child: Text('ini tab 2'),
              ),
              Center(
                child: Text('ini tab 3'),
              ),
              Center(
                child: Text('ini tab 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
