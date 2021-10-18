// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:practice/loginpage.dart';
import 'package:practice/widgets/iconfont.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 190,
                            height: 190,
                            color: Color(0xFFFFCCBC),
                            alignment: Alignment.center,
                            child: IconFont(
                              size: 120,
                              iconName: 'a',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text('FINANCE.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 15,
                      ),
                      Text('A banking exprience that you will ever need',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            color: Color(0xFFFFCCBC),
                            padding: EdgeInsets.all(23),
                            child: Text('LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold))),
                      )
                    ]))
              ],
            )));
  }
}
