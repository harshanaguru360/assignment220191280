import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/welcome.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String dropdownvalue = '2020';
  var items = ['2014', '2015', '2016', '2017', '2018', '2019', '2020'];
  bool state = false;
  int _value = 1;
  String? number;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("CRUX FLUTTER SUMMER GROUP"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "ID Number",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextField(
                  onChanged: (text) {
                    number = text;
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 14),
                      hintText: 'Please enter your BITS ID Number',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 14),
                      hintText: 'Please enter your password',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Batch",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  child: DropdownButton(
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 30,
                    isExpanded: true,
                    value: dropdownvalue,
                    items: items.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Recive Regular updates",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(width: 20),
                    //switch to be added
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Switch(
                          value: state,
                          onChanged: (bool s) {
                            setState(() {
                              state = s;
                              print(state);
                            });
                          }),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Are you exicted for this!!",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value,
                            activeColor: Colors.greenAccent,
                            onChanged: (int? value) {
                              setState(() {
                                _value = value!;
                              });
                            }),
                        Text('Yes'),
                        SizedBox(width: 20),
                        Radio(
                            value: 2,
                            groupValue: _value,
                            activeColor: Colors.greenAccent,
                            onChanged: (int? value) {
                              setState(() {
                                _value = value!;
                              });
                            }),
                        Text('No')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent,
                    elevation: 7.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/welcome');
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyLoginPage(value: number),
                        ));
                      },
                      child: Center(
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: InkWell(
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Monteserrat',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 1),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
