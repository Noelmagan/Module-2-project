import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/homepage.dart';
import 'package:practice/splas_screen.dart';
import 'package:practice/welcomepage.dart';
import 'package:practice/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        canvasColor: Color(0xFFFFCCBC),
      ),
      home: SplashScreen(duration: 3, goToPage: WelcomePage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
