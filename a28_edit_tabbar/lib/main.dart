import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      tabs: [
        Tab(
          child: Container(
              child: Image(image: AssetImage('assets/emoji_cute.png'))),
        ),
        Tab(icon: Icon(Icons.computer), text: "Computer"),
      ],
      indicatorColor: Colors.red,
      indicator: BoxDecoration(
        color: Colors.green,
        border: Border(
          top: BorderSide(
            color: Colors.purple,
            width: 6,
          ),
        ),
      ),
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2, // jumlah tab bar
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contoh Tab Bar'),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(
                  child: myTabBar,
                  color: Colors.amber,
                )),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('ini tab 1'),
              ),
              Center(
                child: Text('ini tab 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
