import 'package:flutter/material.dart';
//ignore: must_be_immutable

class MyLoginPage extends StatefulWidget {
  String? value;
  MyLoginPage({this.value});
  @override
  _MyLoginPageState createState() => new _MyLoginPageState(value!);
}

class _MyLoginPageState extends State<MyLoginPage> {
  String value;
  _MyLoginPageState(this.value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 50, 0, 0),
                  child: Text(
                    'CRUX FLUTTER',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 90.0, 0, 0),
                  child: Text(
                    'SUMMER GROUP',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.center,
            child: Text(
              'welcomes you',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.center,
            child: Text(
              value,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Have a great journey ahead!!',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ]));
  }
}
