import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.mobile, required this.largeScreen});


  final Widget mobile;
  final Widget largeScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints){
        if(constraints.maxWidth <600)
        {
            //Mobile Mode
            return mobile;
        }
        else{
          //Large Screen Mode
          return largeScreen;
        }
      })
    );
  }
}