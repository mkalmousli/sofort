import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mac_address/mac_address.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sofort/grpc.dart' as grpc;

Future<grpc.Device> _getDevice() async {
  return grpc.Device(
    address: InternetAddress.anyIPv4.address,
    macAddress: await GetMac.macAddress,
    password: "Hello world!",
  );
}

class DeviceBarcodeWidget extends StatelessWidget {
  const DeviceBarcodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getDevice(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return QrImageView(data: snapshot.data!.writeToJson());
      },
    );
  }
}
