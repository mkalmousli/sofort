import 'package:bloc/bloc.dart' as a;
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sofort/grpc.dart' as grpc;
import 'package:sofort/src/db.dart';
part 'state.dart';
part 'event.dart';

Bloc bloc(BuildContext context) => context.read<Bloc>();

class Bloc extends a.Bloc<Event, State> {
  Bloc(super.initialState) {
    on<ProcessBarcodeEvent>(
      (event, emit) async {
        final string = event.barcode.rawValue;
        if (string == null) return;
        if (state is! ScanningState) return;

        emit(ProcessingState(event.barcode));
        final device = grpc.Device.fromJson(string);

        /// We check if is the device already registered
        final q = db.devices.select();
        q.limit(1);
        q.where((d) => d.macAddress.equals(device.macAddress));
        final isRegistered = (await q.getSingleOrNull()) != null;

        if (isRegistered) {
          return emit(ErrorState());
        }

        /// Return the device.
        emit(SuccessState(device));
      },
    );
  }
}
