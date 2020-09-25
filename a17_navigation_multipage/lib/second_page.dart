import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Second Page!'),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('BACK'),
            )
          ],
        ),
      ),
    );
  }
}
