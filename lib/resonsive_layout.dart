import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  Widget mobile;
  Widget tablet;
  Widget desktop;


   ResponsiveLayout({required this.mobile,required this.tablet,required this.desktop,super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,contraints){
      if(contraints.maxWidth<500){
        return mobile;
      }
      else if(contraints.maxWidth<1100){
        return tablet;
      }
      else{
        return desktop;
      }
    });
  }
}
