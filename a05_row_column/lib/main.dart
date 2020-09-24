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
          title: Text("Row and Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // mengatur sumbu utama
          crossAxisAlignment: CrossAxisAlignment
              .start, // mengatur sumbu bersebrangan dari sumbbu utama
          children: [
            Text('text 1'),
            Text('text 2'),
            Text('text 3'),
            Text('text 4'),
            Row(
              children: [
                Text('Text 5'),
                Text('Text 6'),
                Text('Text 7'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
