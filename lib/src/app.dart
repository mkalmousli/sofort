import 'package:flutter/material.dart';
import 'package:sofort/src/screens/devices/devices.dart';
import 'package:sofort/src/screens/home.dart';

class SofortApp extends StatelessWidget {
  const SofortApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
