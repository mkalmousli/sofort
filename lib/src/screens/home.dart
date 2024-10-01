import 'package:flutter/material.dart';
import 'package:sofort/src/widgets/device.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DeviceBarcodeWidget(),
    );
  }
}
