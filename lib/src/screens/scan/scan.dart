import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'bloc.dart' as a;

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => a.Bloc(a.ScanningState()),
      child: ScanScreenView(),
    );
  }
}

class ScanScreenView extends StatelessWidget {
  const ScanScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<a.Bloc, a.State>(
          builder: (context, state) => Stack(
            children: [
              MobileScanner(
                onDetect: (barcodes) {
                  final barcode = barcodes.barcodes.firstOrNull;
                  if (barcode == null) return;

                  a.bloc(context).add(a.ProcessBarcodeEvent(barcode));
                },
              ),
              ...switch (state) {
                a.ScanningState() => [],
                a.ProcessingState() => [
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                // a.GettingInfoState() => throw UnimplementedError(),
                // a.SuccessState() => throw UnimplementedError(),
                // a.ErrorState() => throw UnimplementedError(),
                _ => [],
              },
            ],
          ),
        ),
      ),
    );
  }
}
