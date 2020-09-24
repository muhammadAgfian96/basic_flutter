import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah Text";

  void tombolDiTekan() {
    setState(() {
      message = "tombol sudah di Tekan!!!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    message = "tombol sudah di Tekan!!!";
                  });
                },
                child: Text('Tekan Saya'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
