
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:finalgameapp_dart/screen/splashscreen.dart';
import 'package:finalgameapp_dart/screen/home.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HIghLowGame(),
    );
  }
}




/*
gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      gr
                    ]
 */