import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextWidget'),
        ),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.adb),
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  suffix: Container(
                    width: 15,
                    height: 15,
                    color: Colors.red,
                  ),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                  labelText: 'Nama lengkap',
                  labelStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w600),
                  hintText: 'Nama lengkapnya loo',
                  hintStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
                // obscureText: true,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
