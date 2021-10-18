// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_header_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //themebackground Color
      backgroundColor: Color(0xFFEFEBE9),
      //call Drawer
      drawer: MyHeaderDrawer(),
      //Appbar
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCCBC),
        centerTitle: true,
        title: Text('My Account'),
        titleTextStyle:
            GoogleFonts.openSans(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Container(
                width: 370,
                height: 175,
                decoration: BoxDecoration(
                    color: Color(0xFFFFCCBC),
                    border: Border.all(
                      color: Color(0xFFFFAB91),
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Current Balance:',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '₱100,000',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
