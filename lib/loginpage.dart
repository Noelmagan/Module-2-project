// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, deprecated_member_use, unused_import, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:practice/dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
        child: Column(children: [
          Text(
            'FINANCE.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'USERNAME',
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            obscureText: true,
            maxLength: 11,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'PASSWORD',
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 19),
                ),
                onPressed: () {
                  print('LOGIN IN');
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  elevation: MaterialStateProperty.all(0),
                )),
          ),
        ]),
      ),
    );
  }
}

class BoarderRadius {}
