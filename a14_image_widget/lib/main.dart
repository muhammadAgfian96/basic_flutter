import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String alamat =
      'https://vignette.wikia.nocookie.net/naruto/images/d/dd/Naruto_Uzumaki%21%21.png/revision/latest/scale-to-width-down/1000?cb=20161013233552';
  final String alamat1 = 'assets/signs.svg';
  final String alamat2 = 'assets/images-icon.png';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                color: Colors.black,
                width: 300,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(alamat),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeatY,
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.all(16),
                color: Colors.black,
                width: 300,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage(alamat2),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeatY,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
