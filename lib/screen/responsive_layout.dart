import 'package:finalgameapp_dart/screen/breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    required this.mobileBody,
    required this.desktopBody
  }) ;

  final Widget mobileBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < kTabletBreakpoint){
            return mobileBody;
          } else{
            return desktopBody ?? mobileBody;
          }
    });
  }
}
