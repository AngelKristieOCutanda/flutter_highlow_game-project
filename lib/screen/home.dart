import 'package:finalgameapp_dart/screen/desktopView.dart';
import 'package:finalgameapp_dart/screen/mobileview.dart';
import 'package:finalgameapp_dart/screen/responsive_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HIghLowGame extends StatefulWidget {
  const HIghLowGame({Key? key}) : super(key: key);

  @override
  State<HIghLowGame> createState() => _HIghLowGameState();
}

class _HIghLowGameState extends State<HIghLowGame> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: ResponsiveLayout(
            mobileBody: MobileView(),
            desktopBody: DesktopView(),
          ),
    )

    );
  }
}