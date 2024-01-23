import 'package:flutter/material.dart';
import 'package:responsive/resonsive_layout.dart';
import 'package:responsive/screen/desktop_screen.dart';
import 'package:responsive/screen/mobile_screen.dart';
import 'package:responsive/screen/tablet_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveLayout(
        mobile: const MobileScreen(),
        tablet: const TabletScreen(),
        desktop: const DesktopScreen(),
      ),
    );
  }
}
