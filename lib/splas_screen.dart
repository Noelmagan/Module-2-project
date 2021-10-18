import 'package:flutter/material.dart';
import 'package:practice/widgets/iconfont.dart';

void main() {
  runApp(MaterialApp());
}

class SplashScreen extends StatelessWidget {
  int duration = 3;
  Widget goToPage;

  SplashScreen({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });

    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: IconFont(color: Colors.black, iconName: 'a', size: 100),
      ),
    );
  }
}
