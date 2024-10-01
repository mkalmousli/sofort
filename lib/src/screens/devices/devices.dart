import 'package:flutter/material.dart';
import 'package:sofort/ext.dart';
import 'package:sofort/src/screens/devices/devices_list.dart';
import 'package:sofort/src/screens/scan/scan.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Devices"),
      ),
      body: const DevicesListView(),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Add Device"),
        onPressed: () {
          context.push((_) => ScanScreen());
        },
      ),
    );
  }
}
