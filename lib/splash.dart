// ignore_for_file: avoid_unnecessary_containers
import 'deteksi.dart';
import 'home.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: HomeScreen(),
      title: Text(
        '',
      ),
      imageBackground: AssetImage('assets/splashscreen_2.jpg'),
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Color.fromARGB(255, 206, 206, 206),
    );
  }
}
