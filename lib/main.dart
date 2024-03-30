// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, non_constant_identifier_names, unused_local_variable

import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: calculator_app(),
    ));

class calculator_app extends StatelessWidget {
  const calculator_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CALCULATOR',
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 82, 82, 82),
        elevation: 0.0,
        titleTextStyle: TextStyle(
          fontSize: 35.0,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "0",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                customOutlineButton("9"),
                SizedBox(width: 15.0),
                customOutlineButton("8"),
                SizedBox(width: 15.0),
                customOutlineButton("7"),
                SizedBox(width: 20.0),
                customOutlineButton("/"),
                SizedBox(width: 20.0),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                customOutlineButton("6"),
                SizedBox(width: 15.0),
                customOutlineButton("5"),
                SizedBox(width: 15.0),
                customOutlineButton("4"),
                SizedBox(width: 20.0),
                customOutlineButton("*"),
                SizedBox(width: 20.0),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                customOutlineButton("3"),
                SizedBox(width: 15.0),
                customOutlineButton("2"),
                SizedBox(width: 15.0),
                customOutlineButton("1"),
                SizedBox(width: 22.0),
                customOutlineButton("-"),
                SizedBox(width: 20.0),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                customOutlineButton(
                  "C",
                ),
                SizedBox(width: 15.0),
                customOutlineButton("0"),
                SizedBox(width: 15.0),
                customOutlineButton("="),
                SizedBox(width: 13.0),
                customOutlineButton("+"),
                SizedBox(width: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customOutlineButton(String value) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          value,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
